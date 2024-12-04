//
//  ScheduleHome.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct ScheduleHome: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<4)
                {i in
                    ScheduleElement()
                }
            }
        }
        .padding()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScheduleHome()
}
