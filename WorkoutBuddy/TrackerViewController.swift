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
    
    var arrayOfExercises : [String] = []
    var arrayOfTitles : [String] = []
    var workout = Workout()
    
    class var sharedInstance: TrackerViewController {
        struct Static {
            static var instance:TrackerViewController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token)    {
            Static.instance = TrackerViewController()
        }
        return Static.instance!
    }

    
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
        
        
        let dateForLabel = NSDateFormatter.localizedStringFromDate(workout.date, dateStyle: NSDateFormatterStyle.FullStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
        self.dateLabel.text = dateForLabel

    //    self.dateLabel.text = workout.date.description
        
        tableView.registerNib(UINib(nibName: "TrackerTableViewCell", bundle: nil), forCellReuseIdentifier: "TrackerTableViewCell")
        
        
//        //create an instance of UIRotationGestureRecognizer
//        let leftSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(TrackerViewController.handleSwipe(_:)))
//        self.view.addGestureRecognizer(leftSwipe)
//
    }
    
//    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool { // return NO to not change text
//            return true
//    }

//    func handleSwipe() {
//        
//        print("Rotate recognized")
//        self.view.transform = CGAffineTransformMake
//        if (sender!.state == UIGestureRecognizerState.Ended) {
//            
//            print("rotation \(sender!.swipe)")
//            
//        }
//        
//    }
    @IBAction func listenButtonTapped(sender: UIButton) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //as! casts this returned value to type AppDelegate
        
        appDelegate.navigateToMusic()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("TrackerTableViewCell", forIndexPath: indexPath) as? TrackerTableViewCell
        if (cell == nil)    {
            cell = TrackerTableViewCell()
        }
        
        print(cell)
        return cell!
    }
    
    @IBAction func iWorkedHardButtonTapped(sender: UIButton) {
        //package the exercises up in an array to be shipped off the the exercises controller
        
        //var workout = Workout()
//        for index in 1...9  {
//            
//            let indexPath:NSIndexPath = NSIndexPath(forRow: index, inSection: 1)
//            let cell = tableView.cellForRowAtIndexPath(indexPath) as! TrackerTableViewCell
//            
//            workout.title = cell.titleTextField.text!
//            workout.exercises = cell.activityTextField.text
//            

        //var arrayOfNames : [String] = [String]()
        
        
        var tmpArrOfTit : [String] = []
        var tmpArrOfEx : [String] = []
        for i in 0 ..< 10 { //be sure to keep the number of cells the same even though it's sort of cheating
            let indexPath = NSIndexPath(forRow:i, inSection:0)
            let cell : TrackerTableViewCell? = self.tableView.cellForRowAtIndexPath(indexPath) as! TrackerTableViewCell?
            if let item = cell?.titleTextField.text {
                if (item.characters.count > 0) {
                tmpArrOfTit.append(item)
                }
            }
            if let item = cell?.activityTextField.text {
                if (item.characters.count > 0) {
                tmpArrOfEx.append(item)
                }
            }
        }
        
        arrayOfTitles = tmpArrOfTit
        arrayOfExercises = tmpArrOfEx
        
        let workout = Workout()

        for i in 0..<arrayOfExercises.count {
            
            var titleAndExercise : String = ""
            
            if (arrayOfExercises[i].characters.count > 0 &&  arrayOfTitles[i].characters.count > 0) {
                
                titleAndExercise =  "\(arrayOfTitles[i]) ,\(arrayOfExercises[i])"
                
            }
            workout.exercises.append(titleAndExercise)
        }
        

        print("This is the arrayOfExercises: \(arrayOfExercises)")
        print("This is the arrayOfTitles\(arrayOfTitles)")

        
            
            
//            let indexEndOfText = cell.setOneTextField.text!.endIndex.advancedBy(-2) //this should get a substring of the weight for setOne CHECK FOR THE HYPHEN
//            let indexStartOfText = cell.setOneTextField.text!.startIndex.advancedBy(4) //this should get a substring of the rep for setOne hopefully skipping over the -
//            
//            exercise.reps = (Int((cell.setOneTextField.text?.substringFromIndex(indexStartOfText))!))!
//            let reps = exercise.reps
//            print(reps)
//            exercise.weight = (Int((cell.setTwoTextField.text?.substringToIndex(indexEndOfText))!))!
//            let weight = exercise.weight
//            print(weight)
//
//            let indexEndOfText2 = cell.setOneTextField.text!.endIndex.advancedBy(-2) //this should get a substring of the weight for setOne
//            let indexStartOfText2 = cell.setOneTextField.text!.startIndex.advancedBy(4) //this should get a substring of the rep for setOne hopefully skipping over the -
//            exercise.setTwoWeight = (Int((cell.setTwoTextField.text?.substringToIndex(indexEndOfText2))!))!
//            let setTwoWeight = exercise.setTwoWeight
//            exercise.setTwoReps = (Int((cell.setTwoTextField.text?.substringFromIndex(indexStartOfText2))!))!
//            let setTwoReps = exercise.setTwoWeight
//            
//            let indexEndOfText3 = cell.setThreeTextField.text!.endIndex.advancedBy(-2) //this should get a substring of the weight for setOne
//            let indexStartOfText3 = cell.setThreeTextField.text!.startIndex.advancedBy(4) //this should get a substring of the rep for setOne hopefully skipping over the -
//            exercise.setThreeWeight = (Int((cell.setThreeTextField.text?.substringToIndex(indexEndOfText3))!))!
//            let setThreeWeight = exercise.setThreeWeight
//            exercise.setThreeReps = (Int((cell.setThreeTextField.text?.substringFromIndex(indexStartOfText3))!))!
//            let setThreeReps = exercise.setTwoReps
//            
//            let indexEndOfText4 = cell.setFourTextField.text!.endIndex.advancedBy(-2) //this should get a substring of the weight for setOne
//            let indexStartOfText4 = cell.setFourTextField.text!.startIndex.advancedBy(4) //this should get a substring of the rep for setOne hopefully skipping over the -
//            exercise.setFourWeight = (Int((cell.setFourTextField.text?.substringToIndex(indexEndOfText4))!))!
//            let setFourWeight = exercise.setFourWeight
//            exercise.setFourReps = (Int((cell.setFourTextField.text?.substringFromIndex(indexStartOfText4))!))!
//            let setFourReps = exercise.setFourReps
//            
//            
//            exercise = Exercise(title: title!, weight: weight, reps: reps, setTwoWeight: setTwoWeight, setTwoReps: setTwoReps, setThreeReps: setThreeReps, setThreeWeight: setThreeWeight, setFourReps: setFourReps, setFourWeight: setFourWeight)
//
            
    }
    
    
    func getArrayOfExercises() -> [String] {
        print("arrayOfExercises from getArrayOfExercises() \(self.arrayOfExercises)")
        return arrayOfExercises
    }
    func getArrayOfTitles() -> [String] {
        print("arrayOfTitles from getArrayOfTitles() \(self.arrayOfTitles)")
        return arrayOfTitles
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
}
