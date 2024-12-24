//
//  Language.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/04.
//

import SwiftUI

struct SettingLanguage: View {
    @State private var selectedLanguage = "Japanese"
    
    //[String]->[language]に変更する必要あり
    @State var languages: [String] = [
        "Japanese",
        "English",
        "Spanish",
        "Chinese",
        "Korean",
        "Vietnamese",
        "Portuguese"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(languages, id: \.self) { language in
                    HStack {
                        Text(language)
                        Spacer()
                        if(language == selectedLanguage) {
                            Image(systemName: "checkmark.circle")
                                .foregroundStyle(.white)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 1)) {
                            selectedLanguage = language
                        }
                    }
                }
                
            }
            .navigationTitle("Language")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        CustomButton(label: "Confirm")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingLanguage()
}
