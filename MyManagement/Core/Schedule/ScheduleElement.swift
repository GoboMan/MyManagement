//
//  ScheduleList.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct ScheduleElement: View {
    @State var 
    var body: some View {
        VStack(spacing: 15) {
            //アイコン、カテゴリー名、丸い編集アイコンを表示
            HStack {
                HStack {
                    Image(systemName: "figure.run")
                        .frame(width: 25, height: 25)
                        .background(Color(.orange))
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    CustomLabel(label: "workout")
                }
                
                Spacer()
                
                Image(systemName: "ellipsis.circle.fill")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(.gray.opacity(0.3))
            }
            
            //スケジュール名、時刻、夢名、開始までの時間の表示部分
            VStack {
                HStack {
                    Text("Go to the gym")
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                    Text("7:00 - 8:00")
                        .font(.callout)
                        .bold()
                    
                }
                
                
                HStack{
                    Text("iOS professional developer")
                        .font(.caption)
                    
                    Spacer()
                    
                    Text("in 1hr 15min")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
            }
            
            Divider()
            
            //Todo部分
            VStack {
                HStack {
                    Image(systemName: "list.bullet")
                    CustomLabel(label: "Todos")
                    
                    Spacer()
                }
                
                ForEach(0 ..< 3, id: \.self) { _ in
                    HStack() {
                        Image(systemName: "circle")
                            .font(.system(size: 20))
                            .foregroundColor(Color.gray.opacity(0.5))
                        Text("chest press 80kg × 10")
                            .font(.system(size: 14))
                        
                        Spacer()
                    }
                    .padding(.vertical, 5)
                }
                
            }
        }
        .cornerRadius(10)
        .padding(8)
    }
}

#Preview {
    ScheduleElement()
}
