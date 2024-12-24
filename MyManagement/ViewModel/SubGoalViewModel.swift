//
//  SubGoalViewModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/15.
//

import SwiftUI
import Foundation

class SubGoalViewModel : ObservableObject {
    @Published var subGoal_id: Int
    @Published var name: String
    @Published var subGoalTasks: [SubGoalTask]?
    @Published private var subGoal: SubGoal
    var id: Int {
        return subGoal_id
    }
    
    init(subGoal: SubGoal) {
        self.subGoal = subGoal
        self.subGoal_id = subGoal.subGoal_id
        self.name = subGoal.name
        self.subGoalTasks = subGoal.subGoalTasks
    }
    
    //-------------------------------------------------------------------------
    //  SubGoalの達成率を、SubGoalTaskの達成数に基づいて計算する
    //-------------------------------------------------------------------------
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
