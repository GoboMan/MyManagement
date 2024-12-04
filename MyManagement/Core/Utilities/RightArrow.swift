//
//  RightArrow.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct RightArrow: View {
    var body: some View {
        Image(systemName: "arrow.right")
            .font(.system(size: 16))
            .frame(width: 40, height: 40)
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    RightArrow()
}
