//
//  SpotifyViewController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class SpotifyViewController: UIViewController {

    @IBOutlet weak var listenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listenButton.backgroundColor = UIColor.init(red: 0.173, green: 0.431, blue: 0.522, alpha: 1.0)
        navigationController?.navigationBarHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func workButtonTapped(sender: UIButton) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //as! casts this returned value to type AppDelegate
        
        appDelegate.navigateToTracker()
    }
    @IBAction func motivateButtonTapped(sender: UIButton) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //as! casts this returned value to type AppDelegate
        
        appDelegate.navigateToMotivation()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
