//
//  ContentView.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct ContentView: View {
    var goals: [Goal]
    var schedules: [Schedule]
    var body: some View {
        VStack(spacing: 0) {
            TabView {
                Tab("Schedule", systemImage: "calendar") {
                    ScheduleHome(schedules: schedules)
                }
                Tab("Goal", systemImage: "flag.checkered") {
                    GoalHome(goals: goals)
                }
            }
        }
    }
}

#Preview {
    let date = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 31))!

    let goals: [Goal] = [
        Goal(
            goal_id: 1,
            name: "Release iOS app",
            subGoals: [
                SubGoal(
                    subGoal_id: 1,
                    name: "Complete design of UI"
                ),
                SubGoal(
                    subGoal_id: 2,
                    name: "Coding"
                ),
                SubGoal(
                    subGoal_id: 3,
                    name: "Test"
                )
            ],
            due_date: date
        ),
        Goal(
            goal_id: 2,
            name: "Master AWS Lambda",
            subGoals: [
                SubGoal(
                    subGoal_id: 4,
                    name: "Lambda"
                ),
                SubGoal(
                    subGoal_id: 5,
                    name: "EC2"
                ),
                SubGoal(
                    subGoal_id: 6,
                    name: "CloudFront"
                )
            ],
            due_date: date
        )

    ]
    
    // ========================================================
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
    
    ContentView(goals: goals, schedules: schedules)
}
