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
    
    func createOneExerciseSoIDontGetNilInDateVC() -> Workout {
        
        //let currentDate = NSDate()
        let firstThrowAwayInstanceWorkout = Workout()
        firstThrowAwayInstanceWorkout.date = "1995-11-03"
        firstThrowAwayInstanceWorkout.exercises = ["one" , "two"]
        
        return firstThrowAwayInstanceWorkout
    }
    
    func addWorkout(workout : Workout) {
        arrayOfWorkouts.append(self.createOneExerciseSoIDontGetNilInDateVC())
        //PersistenceManager.saveObject(arrayOfWorkouts, fileName: "arrayOfWorkouts")
        arrayOfWorkouts.append(workout)
        PersistenceManager.saveObject(arrayOfWorkouts, fileName: "arrayOfWorkouts")
    }

    func getWorkout() -> [Workout] {
        if let checkExercises : [Workout] = PersistenceManager.loadObject("arrayOfWorkouts") as? [Workout] {
            
            return checkExercises
            
        } else {
            return []
        }

    }
    
}