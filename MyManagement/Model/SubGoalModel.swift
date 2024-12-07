//
//  SubGoalModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import Foundation

struct SubGoal: Codable, Identifiable {
    var subGoal_id: Int
    var name: String
    var achievementPercentage: Int
    var subGoalTask: [SubGoalTask]?

    var id: Int {
        return subGoal_id
    }
    
    init(subGoal_id: Int, name: String, achievementPercentage: Int, subGoalTask:[SubGoalTask]? = nil) {
        self.subGoal_id = subGoal_id
        self.achievementPercentage = achievementPercentage
        self.name = name
        self.subGoalTask = subGoalTask

    }
}
