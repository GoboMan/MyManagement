//
//  ColorModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct IconColor: Codable, Identifiable {
    var color_id: Int
    var name: String
    var hex_code: String
    
    var id: Int {
        return color_id
    }
    
    init(color_id: Int, name: String, hex_code: String) {
        self.color_id = color_id
        self.name = name
        self.hex_code = hex_code
    }
}
