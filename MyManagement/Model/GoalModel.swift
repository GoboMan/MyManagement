//
//  GoalModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Goal: Codable, Identifiable {
    var goal_id: Int
    var name: String
    var subGoals: [SubGoal]?
    var due_date: Date
    
    var id: Int {
        return goal_id
    }
    
    init(goal_id: Int, name: String, subGoals: [SubGoal]? = nil, due_date: Date) {
        self.goal_id = goal_id
        self.name = name
        self.subGoals = subGoals
        self.due_date = due_date
    }
}
