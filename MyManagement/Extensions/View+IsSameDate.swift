//
//  View+IsSameDate.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/01.
//

import SwiftUI

extension View {
    func isSameDate(_ date1: Date, _ date2: Date) -> Bool {
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
}
