//
//  TrackerViewController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/20/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class TrackerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var listenButton: UIButton!
    @IBOutlet weak var workButton: UIButton!
    @IBOutlet weak var motivateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workButton.backgroundColor = UIColor.orangeColor()

        navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //something like this for when my custom tableview cell is created
        //let cell = tableView.dequeueReusableCellWithIdentifier("PlaceTableViewCell", forIndexPath: indexPath) as! PlaceTableViewCell
        return UITableViewCell() //so I can build
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //create an object for the tableview and do .size or whatever
        return 50 //placeholder so I can run
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //a crucial one for any action
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //probably something like 50
        return 50
        
    }
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true //easy peasy
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
