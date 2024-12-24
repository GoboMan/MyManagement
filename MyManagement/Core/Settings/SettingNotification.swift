//
//  SettingNotification.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct SettingNotification: View {
    @State var isOn: Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("Schedule", isOn: $isOn)
                }
            }
            .navigationTitle("Notification")
        }
    }
}

#Preview {
    SettingNotification()
}
