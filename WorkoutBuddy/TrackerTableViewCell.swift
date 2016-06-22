//
//  TrackerTableViewCell.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/20/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class TrackerTableViewCell: UITableViewCell, UITextInputTraits {

    @IBOutlet weak var setOneTextField: UITextField!
    @IBOutlet weak var setTwoTextField: UITextField!
    @IBOutlet weak var setThreeTextField: UITextField!
    @IBOutlet weak var setFourTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    
    //optional var keyboardType: UIKeyboardType
    
//    required init(coder aDecoder: NSCoder!) {
//        super.init(coder: aDecoder)
//    }
//    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
//
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setOneTextField.keyboardType = UIKeyboardType.DecimalPad
        setTwoTextField.keyboardType = UIKeyboardType.DecimalPad
        setThreeTextField.keyboardType = UIKeyboardType.DecimalPad
        setFourTextField.keyboardType = UIKeyboardType.DecimalPad
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
    
//    func textFieldDidChange(textField: UITextField) {
//        var str = newItemField.text!
//        newItemField.userInteractionEnabled = false
//        newItemField.hidden = true
//        newItemLabel.hidden = false
//        newItemLabel.text = str
//        aBucketListController.sharedInstance.newList.append(str)
    
//    func setUpCell(exercise : Exercise) {
//      //I don't need to pass in exersises... The user will input them here
//    }
}
