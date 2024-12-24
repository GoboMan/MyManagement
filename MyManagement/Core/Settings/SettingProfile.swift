//
//  Profile.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct SettingProfile: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        SettingUsername()
                    } label: {
                        Text("Username")
                    }
                    
                    NavigationLink {
                        
                    } label: {
                        Text("Profile pictures")
                    }
                    
                    NavigationLink {
                        
                    } label: {
                        Text("Background picture")
                    }
                }
            }
        }

    }
}

#Preview {
    SettingProfile()
}
