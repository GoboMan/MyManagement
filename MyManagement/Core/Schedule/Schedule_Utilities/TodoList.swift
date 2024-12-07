//
//  TodoList.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import SwiftUI

struct TodoList: View {
    var todos: [Todo]
    
    var body: some View {
        ForEach(todos) { todo in
            TodoItem(todo: todo)
        }
    }
}

#Preview {
    let todos = [
        Todo(
            todo_id: 1,
            name: "learn swift",
            isComplete: false
        ),
        Todo(
            todo_id: 2,
            name: "learn docker",
            isComplete: false
        )
     ]
    
    TodoList(todos: todos)
}
