//
//  header.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/09.
//

import SwiftUI

struct Header: View {
    var body: some View {
        ZStack {
            HStack {
                Text("My Mana")
                    .font(.system(size: 20))
                Spacer()
                NavigationLink(destination: Settings()) {
                    Image("mother")// userのプロフィールイメージがくる
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                }
            }
        }
    }
}

#Preview {
    Header()
}
