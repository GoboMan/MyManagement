//
//  ColorModel.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/05.
//

import Foundation

struct DefColor: Identifiable {
    var hex_code: String
    var name: String
    
    var id: String {
        return hex_code
    }
    
    init(hex_code: String, name: String) {
        self.hex_code = hex_code
        self.name = name
    }
}
