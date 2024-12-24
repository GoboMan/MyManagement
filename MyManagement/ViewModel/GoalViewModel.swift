//
//  GoalViewModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/15.
//

import Foundation

class GoalViewModel : ObservableObject {
    @Published var goal_id: Int = 0
    @Published var name: String = ""
    @Published var subGoals: [SubGoal]? = nil
    @Published var schedules: [Schedule]? = nil
    @Published var due_date: Date = Date()
    @Published private var goal: Goal? = nil
    var id: Int {
        return goal_id
    }
    
    //  データを非同期で取得するため、イニシャライザの処理は不要にしている
    init() {}
    
    //-------------------------------------------------------------------------
    //  データベースからデータを取得する（実際にデータベースに接続する処理はあとでにする）
    //-------------------------------------------------------------------------
    func fetchGoal() {
        self.goal_id = 1
        self.name = "Complete design"
        self.subGoals = createSubGoals()
        self.schedules = createSchedules()
    }

    private func createSubGoals() -> [SubGoal] {
        return [
            SubGoal(
                subGoal_id: 1,
                name: "Complete design of UI",
                subGoalTasks: createSubGoalTasks(task_ids: [1, 2, 3], names: ["design of UI", "design of Database", "design of function"])
            ),
            SubGoal(
                subGoal_id: 2,
                name: "Coding",
                subGoalTasks: createSubGoalTasks(task_ids: [4, 5, 6], names: ["goal section", "schedule section", "setting section"])
            ),
            SubGoal(
                subGoal_id: 3,
                name: "Testing",
                subGoalTasks: createSubGoalTasks(task_ids: [7, 8, 9], names: ["goal section", "schedule section", "setting section"])
            )
        ]
    }

    private func createSubGoalTasks(task_ids: [Int], names: [String]) -> [SubGoalTask] {
        var tasks: [SubGoalTask] = []
        for (index, task_id) in task_ids.enumerated() {
            tasks.append(
                SubGoalTask(
                    task_id: task_id,
                    name: names[index],
                    isComplete: false,
                    required_time: 7200
                )
            )
        }
        return tasks
    }
    
    private func createSchedules() -> [Schedule] {
        return [
            Schedule(
                schedule_id: 1,
                goal: Goal(goal_id: 1, name: "つよつよエンジニアになる", due_date: Date()),
                todos: [
                    Todo(todo_id: 1, name: "learn swift", isComplete: false),
                    Todo(todo_id: 2, name: "learn docker", isComplete: false)
                ],
                category: Category(category_id: 1, iconImageName: "book.pages", hex_code: "#0000FF", name: "study"),
                name: "swiftとdockerをマスターする",
                start_at: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 10, minute: 0))!,
                end_at: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 12, minute: 0))!
            ),
            Schedule(
                schedule_id: 2,
                goal: Goal(goal_id: 2, name: "get weight over 75 kg", due_date: Date()),
                todos: [
                    Todo(todo_id: 3, name: "腕立て伏せ100回", isComplete: false),
                    Todo(todo_id: 4, name: "腹筋100回", isComplete: false)
                ],
                category: Category(category_id: 2, iconImageName: "figure.run", hex_code: "#FF0000", name: "workout"),
                name: "たくちゃんとジム",
                start_at: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 18, minute: 0))!,
                end_at: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 20, minute: 0))!
            )
        ]
    }
    
    //-------------------------------------------------------------------------
    //  ゴール達成に費やした時間を、スケジュールの時間に基づいて計算する
    //-------------------------------------------------------------------------
    func calcTotalTime() -> Int {
        var total = 0
        guard let schedules = self.schedules else {
            return 0
        }
        
        for schedule in schedules {
            let difference = schedule.end_at.timeIntervalSince(schedule.start_at)
            total += Int(difference)
        }
        return total
    }
    
    //-------------------------------------------------------------------------
    //  ゴールの達成率を、サブゴールに属するサブゴールタスクに基づいて計算する
    //-------------------------------------------------------------------------
    func calcAveragePercentage() -> Int {
        var total = 0
        
        guard let subGoals = self.subGoals, !subGoals.isEmpty else {
            return 0
        }
        
        for subGoal in subGoals {
            total += Int(subGoal.achievementPercentage())
        }
        
        let averagePercentage = total / subGoals.count
        
        return averagePercentage
    }
}
