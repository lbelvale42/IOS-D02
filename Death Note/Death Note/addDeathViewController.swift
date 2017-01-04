//
//  addDeathViewController.swift
//  Death Note
//
//  Created by Lucas BELVALETTE on 10/5/16.
//  Copyright © 2016 Lucas BELVALETTE. All rights reserved.
//

import UIKit

class addDeathViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var describeField: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func doneFunc(sender: AnyObject) {
        print(nameField.text!)
        print(datePicker.date)
        print(describeField.text)
        if !nameField.text!.isEmpty {
            if  describeField.text.isEmpty {
                describeField.text = "(Heart Attack)"
            }
            performSegueWithIdentifier("createDeath", sender: "Foo")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "createDeath" {
            if let vc = segue.destinationViewController as? ViewController {
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "dd-MM-YYYY hh:mm a"
            let dateString = dateFormatter.stringFromDate(datePicker.date)
               vc.ret = (nameField.text!, dateString, describeField.text)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        nameField.backgroundColor = UIColor.clearColor()
        nameField.layer.borderWidth = CGFloat(2.0)
        nameField.layer.borderColor = UIColor.blackColor().CGColor
        nameField.layer.cornerRadius = CGFloat(5.0)
        describeField.backgroundColor = UIColor.clearColor()
        describeField.layer.borderWidth = CGFloat(2.0)
        describeField.layer.borderColor = UIColor.blackColor().CGColor
        describeField.layer.cornerRadius = CGFloat(5.0)
    }
}
