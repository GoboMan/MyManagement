//
//  StreakView.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/08.
//

import SwiftUI

struct MonthlyRecordedTime: View
{
    var time: Int
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack
            {
                Text("Monthly")
                    .caption(size: 16)
                
                Spacer()
                
                Image(systemName: "clock.fill")
                    .padding(5)
                    .background(.red.opacity(0.2))
                    .foregroundStyle(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            Spacer()
            
            HStack
            {
                Text("\(time)")
                    .font(.title2)
                    .bold()
                Text("hr")
                    .caption(size: 16)
            }
            
            // 条件は後ほど考える
            if(true)
            {
                HStack
                {
                    HStack
                    {
                        Image(systemName: "arrow.up.right")
                        Text("%")
                    }
                    .foregroundStyle(.red)
                    .caption(size: 10)
                    
                    Text("less than previous month")
                        .caption(size: 10)
                }
            }
            else
            {
                VStack(alignment: .leading)
                {
                    HStack
                    {
                        Image(systemName: "arrow.up.right")
                        Text("%")
                    }
                    .foregroundStyle(.green)
                    
                    
                    Text("more than previous month")
                        .caption(size: 10)
                }
            }
        }
        .miniBox()
    }
}

#Preview {
//    MonthlyRecordedTime()
}
