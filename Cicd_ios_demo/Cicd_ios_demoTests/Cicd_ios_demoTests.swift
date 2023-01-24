//
//  Cicd_ios_demoTests.swift
//  Cicd_ios_demoTests
//
//  Created by Payal Porwal on 23/01/23.
//

import XCTest
@testable import Cicd_ios_demo

final class Cicd_ios_demoTests: XCTestCase {
    var vc: ViewController?
    
    override func setUpWithError() throws {
        
        vc = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        vc = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    
    func testSuccessStringTestCase() {
        let expectedString = "HelloWorld"
        XCTAssertNotNil(expectedString)
    }
    
    func testFailureStringTestCase() {
        let expectedString = ""
        XCTAssertEqual(expectedString, "","String can not have value")
    }
    
    func testAddNumberSuccess() {
       let result =  vc?.addNumber(num1: 10, num2: 20)
        let expectedValue = 30
        XCTAssertEqual(result, expectedValue, "Addition of two values are succes")
    }
    
    func testAddNumFailure() {
        let result = vc?.addNumber(num1: 10, num2: 20)
        let expectedValue = 29
        XCTAssertNotEqual(result, expectedValue, "addition of both the vlaues are not equals")
    }
}
