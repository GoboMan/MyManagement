//
//  ProfileView.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/14.
//

import SwiftUI

struct Stats: View {
    // DBから取得したデータをそれぞれ変数に格納し、それを子ビューに渡す
    @State var currentStreak: Int
    @State var maxStreak: Int
    @State var monthlyRecordedTime: Int
    @State var preMonthlyRecordedTime: Int
    @State var totalRecordedTime: Int
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Streak")
                            .font(.title2)
                            .bold()
                        HStack {
                            CurrentStreak(streak: currentStreak)
                            
                            Spacer()
                            
                            MaxStreak(streak: maxStreak)
                            
                        }
                    }
                    .padding(.vertical)
                    
                    VStack(alignment: .leading) {
                        Text("Recorded Time")
                            .font(.title2)
                            .bold()
                        HStack {
                            MonthlyRecordedTime(time: monthlyRecordedTime)
                            
                            Spacer()
                            
                            TotalRecordedTime(time: totalRecordedTime)
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
    Stats(currentStreak: 60, maxStreak: 74, monthlyRecordedTime: 60, preMonthlyRecordedTime: 30, totalRecordedTime: 1055)
}
