import XCTest

import MyCoolPackageTests

var tests = [XCTestCaseEntry]()
tests += MyCoolPackageTests.allTests()
XCTMain(tests)
