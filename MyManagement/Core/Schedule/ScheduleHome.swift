//
//  ScheduleHome.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct ScheduleHome: View {
    @State var schedules: [Schedule]
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(schedules) { schedule in
                    ScheduleElement(schedule: schedule)
                }
            }
        }
        .padding()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    let calendar = Calendar.current
    let startAt1 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 10, minute: 0))!
    let endAt1 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 12, minute: 0))!
    let startAt2 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 18, minute: 0))!
    let endAt2 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 20, minute: 0))!
    
    let schedules: [Schedule] = [
        Schedule(schedule_id: 1,
                 goal: Goal(
                    goal_id: 1,
                    name: "be a professional engineer",
                    due_date: Date()
                 ),
                 todos: [
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
                 ],
                 category: Category(
                    category_id: 1,
                    iconImageName: "book.pages",
                    hex_code: "#0000FF",
                    name: "study"
                 ),
                 name: "swiftとdockerをマスターする",
                 start_at: startAt1,
                 end_at: endAt1
                ),
        Schedule(schedule_id: 2,
                 goal: Goal(
                    goal_id: 2,
                    name: "get weight over 75kg",
                    due_date: Date()
                 ),
                 todos: [
                    Todo(
                        todo_id: 1,
                        name: "腕立て伏せ100回",
                        isComplete: false
                    ),
                    Todo(
                        todo_id: 2,
                        name: "腹筋100回",
                        isComplete: false
                    )
                 ],
                 category: Category(
                    category_id: 1,
                    iconImageName: "figure.run",
                    hex_code: "#FF0000",
                    name: "workout"
                 ),
                 name: "たくちゃんとジム",
                 start_at: startAt2,
                 end_at: endAt2
                )
    ]
    
    ScheduleHome(schedules: schedules)
}
