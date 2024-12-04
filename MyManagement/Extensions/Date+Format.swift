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
}
