import SwiftUI

@main
struct MyManagementApp: App {
    
    let goals: [Goal] = {
        let date = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 31))!
        
        return [
            Goal(
                goal_id: 1,
                name: "Release iOS app",
                subGoals: [
                    SubGoal(subGoal_id: 1, name: "Complete design of UI", achievementPercentage: 54),
                    SubGoal(subGoal_id: 2, name: "Coding", achievementPercentage: 80),
                    SubGoal(subGoal_id: 3, name: "Test", achievementPercentage: 90)
                ],
                due_date: date
            ),
            Goal(
                goal_id: 2,
                name: "Master AWS Lambda",
                subGoals: [
                    SubGoal(subGoal_id: 4, name: "Lambda", achievementPercentage: 54),
                    SubGoal(subGoal_id: 5, name: "EC2", achievementPercentage: 0),
                    SubGoal(subGoal_id: 6, name: "CloudFront", achievementPercentage: 0)
                ],
                due_date: date
            )
        ]
    }()
    
    let schedules: [Schedule] = {
        let calendar = Calendar.current
        let startAt1 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 10, minute: 0))!
        let endAt1 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 12, minute: 0))!
        let startAt2 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 18, minute: 0))!
        let endAt2 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 20, minute: 0))!

        return [
            Schedule(schedule_id: 1,
                     goal: Goal(
                        goal_id: 1,
                        name: "be a professional engineer",
                        due_date: Date()
                     ),
                     todos: [
                        Todo(todo_id: 1, name: "learn swift", isComplete: false),
                        Todo(todo_id: 2, name: "learn docker", isComplete: false)
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
                        Todo(todo_id: 1, name: "腕立て伏せ100回", isComplete: false),
                        Todo(todo_id: 2, name: "腹筋100回", isComplete: false)
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
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView(goals: goals, schedules: schedules)
        }
    }
}
