//
//  Color+HexCode.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/06.
//

import Foundation
import SwiftUI

extension Color {
    // 手順
    // 1.入力されたHexコード（例: #FF5733）を整形して#や余分な空白を削除。
    // 2.整形後のHexコードを16進数値（例: 16724723）に変換。
    // 3.ビット操作で赤・緑・青成分を分離し、それぞれ小数（0.0〜1.0）に変換。
    // 4.最終的にColorのイニシャライザを使って色を作成。
    
    init(hex: String, alpha: Double = 1.0) {
        var hexFormatted = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexFormatted = hexFormatted.replacingOccurrences(of: "#", with: "")

        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)

        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}

