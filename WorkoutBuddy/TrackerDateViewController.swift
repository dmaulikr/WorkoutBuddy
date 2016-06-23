//
//  TrackerDateViewController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/20/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class TrackerDateViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigationController?.navigationBarHidden = true
        navigationController?.hidesBarsOnSwipe = true
        // Do any additional setup after loading the view.
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .MediumStyle
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func lockInButtonTapped(sender: UIButton) {
        
         dateLabel.text = NSDateFormatter.localizedStringFromDate(myDatePicker.date, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.NoStyle)
    
    }
    
//    func getDate() -> String {
//        
//        return NSDateFormatter.localizedStringFromDate(myDatePicker.date, dateStyle: NSDateFormatterStyle.FullStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
//
//  
//    }
    
    @IBAction func goButtonTapped(sender: UIButton) {
        let tvc = TrackerViewController(nibName: "TrackerViewController", bundle: nil)
        
        tvc.workout = Workout()
        
        let date : String = NSDateFormatter.localizedStringFromDate(myDatePicker.date, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.NoStyle)
        
        let checkWorkout = WorkoutController.sharedInstance.getWorkout()
        
        for items in checkWorkout {
            print(items.date)
            print(myDatePicker.date)
            if (items.date == date) {
                tvc.dateLabel.text = tvc.workout.date
                tvc.arrayOfExercises = items.exercises
            }
            else {
                
                tvc.workout.date = date
            }
        }
        
//        if(checkExercises.contains(myDatePicker.date)) {
//            fetch workout for relevant date and set workout for TVC
//        } else {
//            tvc.workout = Workout()
//            tvc.workout.date = myDatePicker.date
//
//        }
        
        navigationController?.pushViewController(tvc, animated: true)
    }

}
