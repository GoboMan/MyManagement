//
//  Schedule.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import Foundation

struct Schedule: Codable, Identifiable {
    var schedule_id: Int
    var goal: Goal
    var todos: [Todo]
    var category: Category
    var name: String
    var start_at: Date
    var end_at: Date
    
    var id: Int {
        return schedule_id
    }
    
    init(schedule_id: Int, goal: Goal, todos: [Todo], category: Category, name: String, start_at: Date, end_at: Date) {
        self.schedule_id = schedule_id
        self.goal = goal
        self.todos = todos
        self.category = category
        self.name = name
        self.start_at = start_at
        self.end_at = end_at
    }
}
