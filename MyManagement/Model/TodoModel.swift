//
//  TodoModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Todo: Identifiable {
    var todo_id: Int
    var name: String
    var isComplete: Bool
    
    var id: Int {
        return todo_id
    }
    
    init(todo_id: Int, name: String, isComplete: Bool){
        self.todo_id = todo_id
        self.name = name
        self.isComplete = isComplete
    }
}
