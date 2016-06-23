//
//  ExercisesController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation

class WorkoutController {
    
    var arrayOfWorkouts : [Workout] = []
    var wcArrayOfExercises : [String] = []
    
    class var sharedInstance: WorkoutController {
        struct Static {
            static var instance:WorkoutController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token)    {
            Static.instance = WorkoutController()
        }
        return Static.instance!
    }
    
    func createExercise(title: String) {
        //Receive the information that the user inputs
        //var exercise: Exercise = Exercise()
        //exercise.title = title
        
        
        //PersistenceManager.saveObject(exercise, fileName: "MyExercise")
    }
    
    func createExercise() {
        
    }
    
    func addWorkout(workout : Workout) {
        
        arrayOfWorkouts.append(workout)
        PersistenceManager.saveNSArray(arrayOfWorkouts, fileName: "arrayOfWorkouts")
    }

    
}