//
//  main.swift
//  PR-lab01-swift
//
//  Created by Eric Golovin on 29.03.2020.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

import Foundation

var arrayOfFlights = Array<AeroFlight>()
var fm = FileManager.default
var fileData = try? String(contentsOfFile: "/Users/ericgolovin/Developer/swift/Swift-Practice/Uni/PR-lab01-swift/PR-lab01-swift/inputTestFile.txt")


