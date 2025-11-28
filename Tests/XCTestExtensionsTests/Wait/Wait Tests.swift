//
//  Wait Tests.swift
//  xctest-extensions • https://github.com/orchetect/xctest-extensions
//  © 2022 Steffan Andrews • Licensed under MIT License
//

import XCTest
import XCTestExtensions

final class WaitTests: XCTestCase {
    func testWaitForEqual_True() {
        let inTime = Date().timeIntervalSince1970
        
        wait(sec: 1.0)
        
        let outTime = Date().timeIntervalSince1970
        
        let diff = outTime - inTime
        
        XCTAssertGreaterThan(diff, 0.99999)
        XCTAssertLessThan(diff, 1.25)
    }
}
