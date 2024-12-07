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
            SubGoalElement(name: subGoal.name, achivementPercentage: subGoal.achievementPercentage)
        }
    }
}

#Preview {
    let subGoals = [
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
    ]
    SubGoalList(subGoals: subGoals)
}
