//
//  View+miniBox.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/13.
//

import SwiftUI

extension View {
    @ViewBuilder
    func miniBox() -> some View {
        self.frame(width: 140, height: 90)
            .padding()
            .background(.white.opacity(0.5))
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
    }
}
