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

        navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func lockInButtonTapped(sender: UIButton) {
        
         dateLabel.text = NSDateFormatter.localizedStringFromDate(myDatePicker.date, dateStyle: NSDateFormatterStyle.FullStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
    
    }
    
    func getDate() -> String {
//        return dateLabel.text!
        return "so"
    }
    
    @IBAction func goButtonTapped(sender: UIButton) {
        let tvc = TrackerViewController(nibName: "TrackerViewController", bundle: nil)
        navigationController?.pushViewController(tvc, animated: true)
    }

}
