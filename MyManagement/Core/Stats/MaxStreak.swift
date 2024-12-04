//
//  MaxStreak.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct MaxStreak: View {
    var streak: Int
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("current")
                    .caption(size: 16)
                
                Spacer()
                
                Image(systemName: "flame.fill")
                    .padding(5)
                    .background(.purple.opacity(0.2))
                    .foregroundStyle(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            Spacer()
            
            HStack {
                Text("\(streak)")
                    .font(.title2)
                    .bold()
                Text("days")
                    .caption(size: 16)
            }
        }
        .miniBox()
    }
}

#Preview {
    MaxStreak(streak: 20)
}
