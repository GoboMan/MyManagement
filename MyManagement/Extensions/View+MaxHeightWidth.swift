//
//  View+MaxHeight.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/08.
//

import SwiftUI

extension View {
    @ViewBuilder
    func maxHeightAndWidthWithPadding() -> some View {
        self.frame( maxWidth: .infinity, maxHeight: .infinity)
            .padding()
    }
}
