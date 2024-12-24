//
//  GoalHome.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import SwiftUI

struct GoalHome: View {
    @StateObject var goalViewModel = GoalViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(goals) { goal in
                    GoalElement(goal: goal)
                }
                .padding()
            }
        }
        .onAppear(
            
        )
        .gradientBackground()
    }
}

#Preview {
    GoalHome(goals: goals)
}
