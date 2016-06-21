//
//  TrackerValidatedTextField.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation
import UIKit

class TrackerValidatedTextField: UITextField , UITextFieldDelegate {
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if (string == "") {
            
            var substring = (textField.text! as NSString).substringToIndex(textField.text!.characters.count-1)
            
            textField.text = substring
            //updateUI()
            
            return false
        }   else    {
            print(self.text)
            
            //print("\(textField.text) string param \(string)")
            textField.text = textField.text! + string
            
            //updateUI()
            
            return false
        }
        
        
        
        
    }
    
    func valid() -> Bool {
        print ("Validaing email: \(self.text!)")
        
        let exerciseRegEx = "{3}[0-9]+-{1,2}[0-9]"
        let exerciseTest = NSPredicate(format:"SELF MATCHES %@", exerciseRegEx)
        return exerciseTest.evaluateWithObject(self.text!)
        
    }
    
//    func updateUI () {
//        
//        if (valid()){
//            imageView.image = UIImage (named : "input_valid")
//        } else {
//            imageView.image = UIImage (named : "input_invalid")
//        }
//    }
    func validate() -> Bool {
        //updateUI()
        
        return self.valid()
    }
}