//
//  Date+IsToday.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/01.
//

import Foundation

extension Date {
    //Mark: Checking Whether the date is today
    var isToday: Bool {
        return Calendar.current.isDateInToday(self)
    }
}
