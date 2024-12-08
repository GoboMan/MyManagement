//
//  ScheduleList.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct ScheduleElement: View {
    @State var schedule: Schedule
    
    var body: some View {
        VStack(spacing: 15) {
            //アイコン、カテゴリー名、丸い編集アイコンを表示
            HStack {
                HStack {
                    Image(systemName: schedule.category.iconImageName)
                        .frame(width: 25, height: 25)
                        .background(Color(hex: schedule.category.hex_code))
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    CustomLabel(label: schedule.category.name, color: .gray)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("\(schedule.start_at.formatToHourAndMinute()) - \(schedule.end_at.formatToHourAndMinute())")
                        .font(.callout)
                        .bold()
                    
                    // あとでロジックは考える
                    Text("in 1hr 15min")
                        .font(.caption)
                        .foregroundStyle(.blue)
                }
                
                
//                Image(systemName: "ellipsis.circle.fill")
//                    .resizable()
//                    .frame(width: 26, height: 26)
//                    .foregroundStyle(.gray.opacity(0.3))
            }
            
            //スケジュール名、時刻、夢名、開始までの時間の表示部分
            VStack {
                HStack {
                    Text(schedule.name)
                        .font(.title3)
                        .bold()
                        .lineLimit(1) // テキストを1行に制限
                        .minimumScaleFactor(0.4) // 最小フォントサイズを元の50%まで縮小
                    
                    Spacer()
                }
                
                
                HStack{
                    Text(schedule.goal.name)
                        .font(.caption)
                    
                    Spacer()
                }
            }
            
            Divider()
            
            //Todo部分
            VStack {
                HStack {
                    Image(systemName: "list.bullet")
                    CustomLabel(label: "Todos", color: .gray)
                    
                    Spacer()
                }
                
                TodoList(todos: schedule.todos)
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    let calendar = Calendar.current
    let startAt1 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 10, minute: 0))!
    let endAt1 = calendar.date(from: DateComponents(year: 2024, month: 12, day: 5, hour: 12, minute: 0))!

    
    let schedule: Schedule =
        Schedule(schedule_id: 1,
                 goal: Goal(
                    goal_id: 1,
                    name: "つよつよエンジニアになる",
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
                )
        
    ScheduleElement(schedule: schedule)
}
