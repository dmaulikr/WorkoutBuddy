//
//  Day.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation

class Day : NSObject, NSCoding {
    
    var date : NSDate
    var arrayOfExercises : [Exercise]
    
    required init(date: NSDate , arrayOfExercises: [Exercise]){
        self.date = date
        self.arrayOfExercises = arrayOfExercises
    }
    
        // MARK: - NSCoding
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.date, forKey: "date")
        aCoder.encodeObject(self.arrayOfExercises, forKey: "arrayOfExercises")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        let date = aDecoder.decodeObjectForKey("date") as? NSDate
        let arrayOfExercises = aDecoder.decodeObjectForKey("arrayOfExercises") as? [Exercise]
        
        self.init(date: date!, arrayOfExercises: arrayOfExercises!)
    }
    
    override init() {
        date = NSDate()
        arrayOfExercises = []
    }
    
}