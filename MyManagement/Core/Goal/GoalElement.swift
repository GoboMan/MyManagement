//
//  GoalElement.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import SwiftUI

struct GoalElement: View {
    var goal: Goal
    var body: some View {
        VStack {
            HStack {
                HStack {
                    CustomLabel(label: "12/31, 2024")
                    CustomLabel(label: "Pick up the pace")
                    Spacer()
                    Image(systemName: "ellipsis.circle.fill")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(.gray.opacity(0.3))
                }
            }
            
            HStack {
                Text("Release iOS app")
                Spacer()
            }
            
            HStack {
                Text("32 days left")
                Spacer()
                Text("18%")
            }
            
            Divider()
            
            HStack {
                CustomLabel(label: "elements")
                Spacer()
            }
                        
            SubGoalList(subGoals: goal.subGoals ?? [])
        }
    }
}

#Preview {
    let date = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 31))!

    let goal = Goal(
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
    )
    
    GoalElement(goal: goal)
}
