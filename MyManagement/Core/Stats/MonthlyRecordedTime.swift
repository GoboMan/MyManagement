//
//  StreakView.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/08.
//

import SwiftUI

struct MonthlyRecordedTime: View {
    var time: Int
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Monthly")
                    .caption(size: 16)
                
                Spacer()
                
                Image(systemName: "clock.fill")
                    .padding(5)
                    .background(.blue.opacity(0.2))
                    .foregroundStyle(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            Spacer()
            
            HStack {
                Text("\(time)")
                    .font(.title2)
                    .bold()
                Text("hr")
                    .caption(size: 16)
            }
        }
        .miniBox()
    }
}

#Preview {
    MonthlyRecordedTime(time: 10)
}
