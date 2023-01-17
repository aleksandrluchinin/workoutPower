//
//  Date.swift
//  workoutPower
//
//  Created by Aleksandr  on 17.01.2023.
//

import Foundation

extension Date {
    
    func getWeekdayNumber() -> Int {
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: self)
        return weekday
    }
}
