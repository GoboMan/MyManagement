//
//  PositionPreferenceKey.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/05.
//

import SwiftUI

struct PositionPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
        value = nextValue()
    }
}

