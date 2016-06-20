//
//  Day.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation

class Day {
    
    var date : NSDate
    var arrayOfExercises : [Exercises]
    
    init() {
        date = NSDate()
        arrayOfExercises = []
    }
    
}