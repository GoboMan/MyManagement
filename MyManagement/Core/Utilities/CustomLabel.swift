//
//  CustomLabel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct CustomLabel: View {
    let label: String
    let color: Color
    var body: some View {
        Text(label)
            .font(.system(size: 14))
            .padding(.horizontal, 20)
            .padding(.vertical, 3)
            .background(color.opacity(0.6))
            .foregroundStyle(.white)
            .cornerRadius(20)
    }
}

#Preview {
    CustomLabel(label: "workout", color: .orange)
}
