//
//  Wait.swift
//  xctest-extensions • https://github.com/orchetect/xctest-extensions
//  © 2022 Steffan Andrews • Licensed under MIT License
//

#if canImport(XCTest)

import XCTest

extension XCTestCase {
    /// Simple XCTest wait timer that does not block the runloop.
    /// - Parameter timeout: floating-point duration in seconds.
    @_disfavoredOverload
    public func wait(sec timeout: Double) {
        let delayExpectation = XCTestExpectation()
        delayExpectation.isInverted = true
        wait(for: [delayExpectation], timeout: timeout)
    }
}

#endif
