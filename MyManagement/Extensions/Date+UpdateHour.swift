//
//  Date+UpdateHour.swift
//  sYoucan
//
//  Created by Taisei Abe on 2024/10/01.
//

import Foundation

extension Date {
    func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        
        //Date型を扱うメソッドの中には、オプショナル型(Date?)を返すものもあるので、その場合は
        return calendar.date(byAdding: .hour, value: value, to: Date()) ?? .init()
    }
}


//学習用メモ if let and guard let
//if letでアンラップされた値は、その後のブロック内でのみ使える
//guard letでアンラップされた値は、その後の処理全般で使用することができる

