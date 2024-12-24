//
//  SubGoalTask.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import Foundation

struct SubGoalTask: Identifiable {
    var task_id: Int
    var name: String
    var isComplete: Bool
    var required_time: Int //秒数を保存する
    
    var id: Int {
        return task_id
    }
    
    init(task_id: Int, name: String, isComplete: Bool, required_time: Int) {
        self.task_id = task_id
        self.name = name
        self.isComplete = isComplete
        self.required_time = required_time
    }
}
