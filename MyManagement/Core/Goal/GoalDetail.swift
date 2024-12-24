//
//  GoalDetail.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/11.
//

import SwiftUI

struct GoalDetail: View {
    var goal: Goal
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                VStack {
                    Text("30 min")
                    Text("days")
                        .caption(size: 10)
                }
                
                Spacer()
                
                Divider()
                
                Spacer()
                
                VStack {
                    Text("300 hr")
                    Text("required")
                        .caption(size: 10)
                }
                
                Spacer()
                
                Divider()
                
                Spacer()

                VStack {
                    Text("20.3 %")
                    Text("progress")
                        .caption(size: 10)
                }
                
                Spacer()
            }
            .frame(height: 40)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack {
                HStack {
                    CustomLabel(label: "Progress", color: .green)
                    Text("90%")
                    
                    Spacer()
                    
                    CustomLabel(label: "Required", color: .gray)
                    Text("4 hr")
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis.circle.fill")
                }
                
                HStack {
                    Text("Complete design of app")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
            Divider()
            
            if let subGoals = goal.subGoals {
                ForEach(subGoals) { subGoal in
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    let date = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 31))!

    let goal: Goal = Goal(
        goal_id: 1,
        name: "Release iOS app",
        subGoals: [
            SubGoal(
                subGoal_id: 1,
                name: "Complete design of UI"
            ),
            SubGoal(
                subGoal_id: 2,
                name: "Coding"
            ),
            SubGoal(
                subGoal_id: 3,
                name: "Test"
            )
        ],
        due_date: date
    )
    
    GoalDetail(goal: goal)
}
