//
//  EmptyWindowTests.swift
//  Empty WindowTests
//
//  Created by Eric Golovin on 2/24/20.
//

import XCTest
@testable import Empty_Window

class Empty_WindowTests: XCTestCase {
    
    var viewController = ViewController()
    
    func testFogMyCats() {
        let input = "cats"
        let output = "dogs"
        XCTAssertEqual(output, self.viewController.dogMyCats(input), "Failed to produce \(output) from \(input)")
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
