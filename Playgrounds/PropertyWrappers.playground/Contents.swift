import UIKit

// First Example
@propertyWrapper struct Capitalized {
    var projectedValue = "Hello"
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.capitalized }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

struct User {
    @Capitalized(wrappedValue: "eric") var firstName: String
    @Capitalized var lastName: String
}

var user = User(lastName: "golovin")

print(user.firstName)
print(user.$lastName) // because of the projectedValue property

// Second Example
private protocol AnyOptional {
    var isNil: Bool { get }
}

extension Optional: AnyOptional {
    var isNil: Bool { self == nil }
}

@propertyWrapper struct UserDefaultsBacked<Value> {
    let key: String
    let defaultValue: Value
    var storage: UserDefaults = .standard
    
    var wrappedValue: Value {
        get {
            let value = storage.value(forKey: key) as? Value
            return value ?? defaultValue
        }
        set {
            if let optional = newValue as? AnyOptional, optional.isNil {
                storage.removeObject(forKey: key)
            } else {
                storage.setValue(newValue, forKey: key)
            }
        }
    }
}

struct SettingsViewModel {
    @UserDefaultsBacked(key: "mark-as-read", defaultValue: true)
    var autoMarkMessagesAsRead
    
    @UserDefaultsBacked(key: "search-page-size", defaultValue: 20)
    var numberOfSearchResultsPerPage
    
    @UserDefaultsBacked(key: "signature")
    var messageSignature: String?
}

extension UserDefaults {
    static var shared: UserDefaults {
        let combined = UserDefaults.standard
        combined.addSuite(named: "group.johnsundell.app")
        return combined
    }
}

extension UserDefaultsBacked where Value: ExpressibleByNilLiteral {
    init(key: String, storage: UserDefaults = .standard) {
        self.init(key: key, defaultValue: nil, storage: storage)
    }
}


