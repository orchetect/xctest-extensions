//
//  Utilities.swift
//  xctest-extensions • https://github.com/orchetect/xctest-extensions
//  © 2022 Steffan Andrews • Licensed under MIT License
//

import Foundation

extension Double {
    /// Internal: Utility to format a double rounded to _n_ decimal places as a string.
    func roundedPercentageString(
        toPlaces: Int
    ) -> String {
        // sanitize inputs
        let toPlaces = min(max(0, toPlaces), 100)
	
        // Foundation method:
        return String(format: "%.\(toPlaces)f", self) + "%"
    }
}
