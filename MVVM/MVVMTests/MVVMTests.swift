//
//  MVVMTests.swift
//  MVVMTests
//
//  Created by Mohammed ElGohary on 4/13/17.
//  Copyright © 2017 Mohammed ElGohary. All rights reserved.
//

import XCTest
@testable import MVVM

class MVVMTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testUserModel1() {
        let userModel = UserViewModel(user: User(carDic: ["firstName":"Mina","lastName":"schoof","age":31,"jobTitle":NSNull()]))
            XCTAssertEqual(userModel.userFullName(), "Mina schoof")
    }
    
}
