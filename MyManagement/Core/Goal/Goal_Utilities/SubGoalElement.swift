//
//  SubGoalElement.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/07.
//

import SwiftUI

struct SubGoalElement: View {
    var name: String
    var achivementPercentage: Int
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Text("\(achivementPercentage)%")
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    SubGoalElement(name: "Lambda", achivementPercentage: 44)
}
