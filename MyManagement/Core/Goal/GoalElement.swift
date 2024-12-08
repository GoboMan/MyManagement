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
                    CustomLabel(label: goal.due_date.format("MM/dd, yyyy"), color:.gray)
                    CustomLabel(label: "Pick up the pace", color: .yellow)
                    Spacer()
                    Image(systemName: "ellipsis.circle.fill")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(.gray.opacity(0.3))
                }
            }
            
            HStack {
                Text(goal.name)
                    .font(.system(size: 20))
                    .bold()
                    .padding(.vertical, 8)
                Spacer()
            }
            
            HStack {
                HStack {
                    Text("32") // 残り日付の計算ができるようにする
                        .font(.system(size: 18))
                        .bold()
                    Text("days left")
                        .caption(size: 12)
                    Spacer()
                }
                Spacer()
                Text("\(goal.calcAveragePercentage())%")
            }
            
            Divider()
            
            HStack {
                CustomLabel(label: "elements", color: .gray)
                Spacer()
            }
                        
            SubGoalList(subGoals: goal.subGoals ?? [])
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
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
