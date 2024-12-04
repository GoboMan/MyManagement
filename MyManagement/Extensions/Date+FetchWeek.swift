//
//  Date+FetchWeek.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/01.
//

import Foundation

extension Date {
    
    struct WeekDay: Identifiable{
        var id: UUID = .init()
        var date: Date
    }
    
    func fetchWeek(_ date: Date = .init()) -> [WeekDay] {
        //Calendarオブジェクトインスタンスを生成（メソッドを使えるようにするため）
        let calendar = Calendar.current
        
        //引数に渡された日にちの時間を００：００に設定
        let startOfDay = calendar.startOfDay(for: date)
        
        //struct WeekDayが入る配列を生成（この関数が返したい配列）
        var week: [WeekDay] = []
        
        //dateInterval型のオブジェクトが入る（start・endの二つのプロパティにそれぞれstartOfDayが含まれる週の始めと終わりの日が入る）
        let dateInterval = calendar.dateInterval(of: .weekOfMonth, for: startOfDay)
        
        //値があるかどうか確認し、ある場合はstartWeekに週の始まりの日を格納
        guard let startOfWeek = dateInterval?.start else {
            return []
        } 
        
        
        (0..<7).forEach { index in
            if let weekDay = calendar.date(byAdding: .day, value: index, to: startOfWeek) {
                //WeekDay(date: weekDay)と書いてインスタンス化するところを省略して、.init(date: weekDay)と書いている
                week.append(.init(date: weekDay))
            }
        }
        return week
    }
    
    func fetchNextWeek() -> [WeekDay] {
        let calendar = Calendar.current
        let startOfLastDay = calendar.startOfDay(for: self)
        guard let nextDate = calendar.date(byAdding: .day, value: 1, to: startOfLastDay) else {
            return []
        }
        
        return fetchWeek(nextDate)
    }
    
    func fetchPreviousWeek() -> [WeekDay] {
        let calendar = Calendar.current
        let startOfFirstDay = calendar.startOfDay(for: self)
        guard let previousDate = calendar.date(byAdding: .day, value: -1, to: startOfFirstDay) else {
            return []
        }
        
        return fetchWeek(previousDate)
    }
}
