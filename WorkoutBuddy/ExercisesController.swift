//
//  ExercisesController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation

class ExercisesController {
    
    class var sharedInstance: ExercisesController {
        struct Static {
            static var instance:ExercisesController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token)    {
            Static.instance = ExercisesController()
        }
        return Static.instance!
    }
    
    func createExercise(title: String) {
        //Receive the information that the user inputs
        var exercise: Exercise = Exercise()
        exercise.title = title
        
        
        
        //PersistenceManager.saveObject(exercise, fileName: "MyExercise")
    }

    
}