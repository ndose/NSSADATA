//
//  DateHelper.swift
//  NasaChallenge
//
//   Created by Hilliman Ncube on 2022/01/31.
//

import Foundation

struct DateHelper {
    static let shared = DateHelper()
    
    private let mediumDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter.locale = Locale(identifier: "en_US")
        
        return formatter
    }()
    
    private init() { }
    
    func formatToMediumDate(_ date: Date) -> String {
        return mediumDateFormatter.string(from: date)
    }
    
}
