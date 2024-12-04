//
//  StatsStreak.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/12/03.
//
import SwiftUI

struct CurrentStreak: View {
    var streak: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("current")
                    .caption(size: 16)
                
                Spacer()
                
                Image(systemName: "flame.fill")
                    .padding(5)
                    .background(.red.opacity(0.2))
                    .foregroundStyle(.red)
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
    CurrentStreak(streak: 60)
}
