//
//  View+Caption.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/08.
//

import SwiftUI

extension View {
    @ViewBuilder
    func caption(size: Int) -> some View {
        self.opacity(0.4)
            .font(.system(size: CGFloat(size)))
    }
}

