//
//  DayController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation

class DayController {
    
    class var sharedInstance: DayController {
        struct Static {
            static var instance:DayController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token)    {
            Static.instance = DayController()
        }
        return Static.instance!
    }

    
}