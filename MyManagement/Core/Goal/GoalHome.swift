//
//  GoalHome.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import SwiftUI

struct GoalHome: View {
    var goals: [Goal]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(goals) { goal in
                    GoalElement(goal: goal)
                }
                .padding()
            }
        }
        .gradientBackground()
    }
}

#Preview {
    let date = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 31))!

    let goals: [Goal] = [
        Goal(
            goal_id: 1,
            name: "Release iOS app",
            subGoals: [
                SubGoal(
                    subGoal_id: 1,
                    name: "Complete design of UI",
                    achievementPercentage: 54
                ),
                SubGoal(
                    subGoal_id: 2,
                    name: "Coding",
                    achievementPercentage: 80
                ),
                SubGoal(
                    subGoal_id: 3,
                    name: "Test",
                    achievementPercentage: 90
                )
            ],
            due_date: date
        ),
        Goal(
            goal_id: 2,
            name: "Master AWS Lambda",
            subGoals: [
                SubGoal(
                    subGoal_id: 4,
                    name: "Lambda",
                    achievementPercentage: 54
                ),
                SubGoal(
                    subGoal_id: 5,
                    name: "EC2",
                    achievementPercentage: 0
                ),
                SubGoal(
                    subGoal_id: 6,
                    name: "CloudFront",
                    achievementPercentage: 0
                )
            ],
            due_date: date
        )

    ]
    
    GoalHome(goals: goals)
}
