//
//  View+Box.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/08.
//

import SwiftUI

extension View {
    @ViewBuilder
    func box() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: 40)
            .padding()
            .background(.white.opacity(0.5))
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
