//
//  Friend.swift
//  Birthdays
//
//  Created by Kobayashi Daigo on 2026/07/10.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }

    /// 今日が誕生日か（年は無視して月と日で判定）
    var isBirthdayToday: Bool {
        let calendar = Calendar.current
        let today = calendar.dateComponents([.month, .day], from: .now)
        let birth = calendar.dateComponents([.month, .day], from: birthday)
        return today == birth
    }
}
