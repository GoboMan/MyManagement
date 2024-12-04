//
//  TotalRecordedTime.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct TotalRecordedTime: View {
    var time: Int
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Monthly")
                    .caption(size: 16)
                
                Spacer()
                
                Image(systemName: "clock.fill")
                    .padding(5)
                    .background(.green.opacity(0.2))
                    .foregroundStyle(.green)
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
    TotalRecordedTime(time: 1000)
}
