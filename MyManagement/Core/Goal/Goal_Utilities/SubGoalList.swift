//
//  SubGoalList.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import SwiftUI

struct SubGoalList: View {
    var subGoals: [SubGoal]
    var body: some View {
        ForEach(subGoals) {subGoal in
            SubGoalElement(name: subGoal.name, achivementPercentage: Int(subGoal.achievementPercentage))
        }
    }
}

#Preview {
    let subGoals = [
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
    ]
    SubGoalList(subGoals: subGoals)
}
