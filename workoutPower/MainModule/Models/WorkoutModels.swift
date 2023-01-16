//
//  WorkoutModels.swift
//  workoutPower
//
//  Created by Aleksandr  on 16.01.2023.
//

import Foundation
import RealmSwift

class WorkoutModels: Object {
    @Persisted var workoutDate: Date
    @Persisted var workoutNumberOfDay: Int = 0
    @Persisted var workoutName: String = "Unknown"
    @Persisted var workoutRepeat: Bool = true
    @Persisted var workoutSets: Int = 0
    @Persisted var workoutReps: Int = 0
    @Persisted var workouttimer: Int = 0
    @Persisted var workoutImage: Data?
    @Persisted var workoutStatus: Bool = false
    
}
