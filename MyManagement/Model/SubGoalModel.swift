//
//  SubGoalModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import Foundation
import SwiftUI

struct SubGoal: Identifiable {
    var subGoal_id: Int
    var name: String
    var subGoalTasks: [SubGoalTask]?
    var id: Int {
        return subGoal_id
    }
    
    init(subGoal_id: Int, name: String, subGoalTasks:[SubGoalTask]? = nil) {
        self.subGoal_id = subGoal_id
        self.name = name
        self.subGoalTasks = subGoalTasks
    }

    func achievementPercentage() -> Double {
        guard let subGoalTasks = subGoalTasks, !subGoalTasks.isEmpty else {
            return 0.0
        }
        let numTasks = subGoalTasks.count
        
        //  完了したタスクをフィルタリング
        let numDoneTasks = subGoalTasks.filter { $0.isComplete }.count
        return (Double(numDoneTasks) / Double(numTasks)) * 100
    }

}
