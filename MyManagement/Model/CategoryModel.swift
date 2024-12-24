//
//  CategoryModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Category: Identifiable {
    var category_id: Int
    var iconImageName: String
    var hex_code: String
    var name: String
    
    var id: Int {
        return category_id
    }
    
    init(category_id: Int, iconImageName: String, hex_code: String, name: String) {
        self.category_id = category_id
        self.iconImageName = iconImageName
        self.hex_code = hex_code
        self.name = name
    }
}
