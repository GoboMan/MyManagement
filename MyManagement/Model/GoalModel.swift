//
//  GoalModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Goal: Codable {
    var goal_id: Int
    var name: String
    var due_date: Date
    
    init(goal_id: Int, name: String, due_date: Date) {
        self.goal_id = goal_id
        self.name = name
        self.due_date = due_date
    }
}

//struct Goal {
//    var goal_id: Int
//    var name: String
//    var due_date: Date
//    
//    init(goal_id: Int, name: String, due_date: Date) {
//        self.goal_id = goal_id
//        self.name = name
//        self.due_date = due_date
//    }
//}