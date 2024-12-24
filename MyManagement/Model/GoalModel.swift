//
//  GoalModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Goal: Identifiable {
    var goal_id: Int
    var name: String
    var subGoals: [SubGoal]?
    var schedules: [Schedule]?
    var due_date: Date
    
    var id: Int {
        return goal_id
    }
    
    init(goal_id: Int, name: String, subGoals: [SubGoal]? = nil, schedules: [Schedule]? = nil, due_date: Date) {
        self.goal_id = goal_id
        self.name = name
        self.subGoals = subGoals
        self.schedules = schedules
        self.due_date = due_date
    }
    
    func calcTotalTime() -> Int {
        var total = 0
        guard let schedules = self.schedules else {
            return 0
        }
        
        for schedule in schedules {
            let difference = schedule.end_at.timeIntervalSince(schedule.start_at)
            total += Int(difference)
        }
        return total
    }
    
    func calcAveragePercentage() -> Int {
        var total = 0
        
        guard let subGoals = self.subGoals, !subGoals.isEmpty else {
            return 0
        }
        
        for subGoal in subGoals {
            total += Int(subGoal.achievementPercentage())
        }
        
        let averagePercentage = total / subGoals.count
        
        return averagePercentage
    }
}
