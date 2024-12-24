//
//  SubGoalDetail.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/12.
//

import SwiftUI

struct SubGoalDetail: View {
    var subGoal: SubGoal
    var body: some View {
        VStack {
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
            
//            if let subGoals = goal.subGoals {
//                ForEach(subGoals) { subGoal in
//                    
//                }
//            }
        }
        .padding()
    }
}

#Preview {
    let subGoal = SubGoal(
        subGoal_id: 1,
        name: "Release iOS App",
        subGoalTasks: [
            SubGoalTask(task_id: 1, name: "Complete design of app", isComplete: false, required_time: 36000),
            SubGoalTask(task_id: 2, name: "Design database", isComplete: false, required_time: 36000),
            SubGoalTask(task_id: 3, name: "Arrage tasks in my team", isComplete: false, required_time: 36000),
            SubGoalTask(task_id: 4, name: "Coding", isComplete: false, required_time: 360000),
            SubGoalTask(task_id: 5, name: "Testing", isComplete: false, required_time: 52000),
            SubGoalTask(task_id: 6, name: "Release", isComplete: false, required_time: 50000)
        ]
    )
    SubGoalDetail(subGoal: subGoal)
}
