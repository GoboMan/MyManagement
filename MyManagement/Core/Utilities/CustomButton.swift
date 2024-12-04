//
//  CustomButton.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct CustomButton: View {
    let label: String
    var body: some View {
        Text(label)
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))    }
}

#Preview {
    CustomButton(label: "Done")
}
