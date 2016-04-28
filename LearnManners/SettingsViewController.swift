//
//  SettingsViewController.swift
//  LearnManners
//
//  Created by Kelly Ochikubo on 4/27/16.
//  Copyright © 2016 Kelly Ochikubo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    var userDefaults : NSUserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDefaults = NSUserDefaults.standardUserDefaults()
        
        let email = userDefaults.objectForKey("email_address")
        if email != nil {
            emailTextField.text = email as? String
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savePressed(sender: AnyObject) {
        
        var email = emailTextField.text
        if !(email?.containsString("@"))! {
            emailTextField.text = "Invalid email."
        } else {
            userDefaults.setObject(emailTextField.text, forKey: "email_address")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }

    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        loadView()
    }

}
