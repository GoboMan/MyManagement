//
//  ScheduleViewModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/15.
//

import Foundation

class ScheduleViewModel : ObservableObject {
    @Published var schedule_id: Int
    @Published var goal: Goal
    @Published var todos: [Todo]
    @Published var category: Category
    @Published var name: String
    @Published var start_at: Date
    @Published var end_at: Date
    @Published private var schedule: Schedule

    var id: Int {
        return schedule_id
    }

    init(schedule: Schedule) {
        self.schedule = schedule
        self.schedule_id = schedule.schedule_id
        self.goal = schedule.goal
        self.todos = schedule.todos
        self.category = schedule.category
        self.name = schedule.name
        self.start_at = schedule.start_at
        self.end_at = schedule.end_at
    }

}
