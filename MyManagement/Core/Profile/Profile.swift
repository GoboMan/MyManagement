//
//  ProfileView.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/14.
//

import SwiftUI

struct Profile: View
{
    @State var currentStreak: Int = 0
    @State var maxStreak: Int = 0
    @State var monthlyRecordedTime: Int = 0
    @State var preMonthlyRecordedTime: Int = 0
    @State var totalRecordedTime: Int = 0
    var preTotalRecordedTime: Int
    {
        return totalRecordedTime - monthlyRecordedTime
    }

    var body: some View
    {
        NavigationStack
        {
            ScrollView
            {
                VStack(alignment: .leading)
                {
                    VStack(alignment: .leading)
                    {
                        Text("Streak")
                            .font(.title2)
                            .bold()
                        HStack
                        {
                            //viewに余計な値を渡さないようにStatsElementViewをstreakとrecordedTimeと二つに分割する方がいい？
                            CurrentStreak(imageColor: .red, caption: "current", streak: 60)
                            
                            Spacer()
                            
                            CurrentStreak(imageColor: .purple, caption: "maximum", streak: 80)

                        }
                    }
                    .padding(.vertical)
                    
                    VStack(alignment: .leading)
                    {
                        Text("Recorded Time")
                            .font(.title2)
                            .bold()
                        HStack
                        {
//                            MonthlyRecordedTime()
                            
                            Spacer()
                            
//                            TotalRecordedTime()
                        }
                    }
                    .padding(.vertical)
                    
                    
                }
            }
            .maxHeightAndWidthWithPadding()
            .gradientBackground()
        }
    }
}

#Preview {
    Profile(currentStreak: 60, maxStreak: 74, monthlyRecordedTime: 60, preMonthlyRecordedTime: 30, totalRecordedTime: 1055)
}
