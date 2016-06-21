//
//  TrackerViewController.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/20/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class TrackerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var listenButton: UIButton!
    @IBOutlet weak var workButton: UIButton!
    @IBOutlet weak var motivateButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workButton.backgroundColor = UIColor.init(red: 0.173, green: 0.431, blue: 0.522, alpha: 1.0)
        //(red: 0.5, green: 0.5, blue: 2.0, alpha: 1.0)
        navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        self.tableView.allowsMultipleSelectionDuringEditing = false
        
        self.tableView.registerClass(TrackerTableViewCell.self, forCellReuseIdentifier: "TrackerTableViewCell")
        
        self.navigationController!.navigationBar.hidden = false
        
        tableView.registerNib(UINib(nibName: "TrackerTableViewCell", bundle: nil), forCellReuseIdentifier: "TrackerTableViewCell")

        
        setDate()
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool { // return NO to not change text
            return true
    }

    @IBAction func listenButtonTapped(sender: UIButton) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //as! casts this returned value to type AppDelegate
        
        appDelegate.navigateToMusic()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setDate() {
        let tdvc = TrackerDateViewController()
        var date = tdvc.getDate()
        
        dateLabel.text = date
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TrackerTableViewCell", forIndexPath: indexPath) as? TrackerTableViewCell
        if (cell == nil)    {
            cell = TrackerTableViewCell()
        }
        
        print(cell)
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //create an object for the tableview and do .size or whatever
        return 9 //placeholder so I can run
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //a crucial one for any action
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //probably something like 50
        return 44
        
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
