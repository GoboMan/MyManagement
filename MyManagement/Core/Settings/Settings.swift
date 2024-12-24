//
//  Settings.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        SettingProfile()
                    } label: {
                        HStack {
                            Image("mother")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                
                            VStack(alignment: .leading) {
                                Text("Profile")
                                    .bold()
                                Text("hagegobou")
                                    .caption(size: 16)
                            }
                        }
                    }

                }
                Section {
                    NavigationLink("Notification") {
                        //insert destination view here
                        SettingNotification()
                    }
                    
                    NavigationLink("Theme") {
                        
                    }
                    
                    NavigationLink("Language") {
                        SettingLanguage()
                    }
                    
                    NavigationLink("Password") {
                        
                    }
                    
                    NavigationLink("Help") {
                        
                    }
                }
                
                Section {
                    NavigationLink("Category") {
                        SettingCategory()
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    Settings()
}
