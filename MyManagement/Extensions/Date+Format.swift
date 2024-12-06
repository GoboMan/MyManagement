//
//  Date+Format.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/01.
//

import Foundation

extension Date {
    func format(_ format: String) -> String {
        let formatter  = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
    
    func formatToHourAndMinute() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        formatter.locale = Locale(identifier: "en_US_POSIX") // 一貫性を確保する設定
        return formatter.string(from: self)
    }
}
