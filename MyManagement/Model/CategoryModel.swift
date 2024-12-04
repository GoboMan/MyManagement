//
//  CategoryModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct Category: Codable {
    var category_id: Int
    var hex_code: String
    var name: String
    
    init(category_id: Int, hex_code: String, name: String) {
        self.category_id = category_id
        self.hex_code = hex_code
        self.name = name
    }
}
