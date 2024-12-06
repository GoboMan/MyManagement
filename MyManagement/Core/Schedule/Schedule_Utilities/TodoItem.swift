//
//  TodoItem.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/06.
//

import SwiftUI

struct TodoItem: View {
    var todo: Todo
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .font(.system(size: 20))
                .foregroundColor(.gray.opacity(0.5))
            Text(todo.name)
                .font(.system(size: 14))
            
            Spacer()
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    let todo = Todo(
        todo_id: 1,
        name: "うんち",
        isComplete: false
    )
    
    TodoItem(todo: todo)
}
