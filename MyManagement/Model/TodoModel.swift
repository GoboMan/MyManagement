//
//  TodoModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Todo: Codable {
    var todo_id: Int
    var name: String
    var isComplete: Bool
    
    init(todo_id: Int, name: String, isComplete: Bool){
        self.todo_id = todo_id
        self.name = name
        self.isComplete = isComplete
    }
}

//struct Todo {
//    var todo_id: Int
//    var schedule_id: Int
//    var name: String
//    
//    init(todo_id: Int, schedule_id: Int, name: String){
//        self.todo_id = todo_id
//        self.schedule_id = schedule_id
//        self.name = name
//    }
//}
