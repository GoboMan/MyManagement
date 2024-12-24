//
//  SettingUsername.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct SettingUsername: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("what's your name?", text: $name)
                }
            }
            .navigationTitle("Username")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        CustomButton(label: "Done")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingUsername()
}
