//
//  GradientBackground.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/08.
//

import SwiftUI

extension View {
    @ViewBuilder
    func gradientBackground() -> some View{
        self.background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.3, green: 0.5, blue: 0.7).opacity(0.7), // 透明度を追加
                    Color(red: 0.5, green: 0.4, blue: 0.5).opacity(0.7), // 透明度を追加
                    Color(red: 0.7, green: 0.1, blue: 0.1).opacity(0.4)  // 透明度を追加
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}
