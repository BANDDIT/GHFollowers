//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Arrick Russell Adinoto on 18/11/25.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
