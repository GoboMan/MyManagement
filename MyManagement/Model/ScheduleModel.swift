//
//  Schedule.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import Foundation

struct Schedule: Codable {
    var schedule_id: Int
    var name: String
    var start_at: Date
    var end_at: Date
    
    init(schedule_id: Int, name: String, start_at: Date, end_at: Date) {
        self.schedule_id = schedule_id
        self.name = name
        self.start_at = start_at
        self.end_at = end_at
    }
}

//struct Schedule {
//    var schedule_id: Int
//    var goal_id: Int
//    var category_id: Int
//    var name: String
//    var start_at: Date
//    var end_at: Date
//    
//    init(schedule_id: Int, goal_id: Int, category_id: Int, name: String, start_at: Date, end_at: Date) {
//        self.schedule_id = schedule_id
//        self.goal_id = goal_id
//        self.category_id = category_id
//        self.name = name
//        self.start_at = start_at
//        self.end_at = end_at
//    }
//}
