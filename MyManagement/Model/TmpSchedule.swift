//
//  TmpSchedule.swift
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/22.
//

import Foundation

struct TmpSchedule: Identifiable {
    var tmp_schedule_id: Int
    var category: Category
    var name: String
    
    var id: Int {
        return tmp_schedule_id
    }
    
    init(tmp_schedule_id: Int, category: Category, name: String) {
        self.tmp_schedule_id = tmp_schedule_id
        self.category = category
        self.name = name
    }
}
