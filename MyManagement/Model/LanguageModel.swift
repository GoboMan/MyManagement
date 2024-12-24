//
//  LanguageModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/22.
//

import Foundation

struct LanguageModel: Identifiable {
    var lan_code: String
    var name: String
    var is_active: Bool
    
    var id: String {
        return lan_code
    }
    
    init(lan_code: String, name: String, is_active: Bool) {
        self.lan_code = lan_code
        self.name = name
        self.is_active = is_active
    }
}
