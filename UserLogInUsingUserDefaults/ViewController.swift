//
//  ViewController.swift
//  UserLogInUsingUserDefaults
//
//  Created by rd on 12/07/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    
//    let email = "letcreateanapp@gmail.com"
//    let password = "123456"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        if isCrendentialExisting() == true {
            self.performSegue(withIdentifier: "GoToSecond", sender: self)
        }
    }
    
    
    func isCrendentialExisting() -> Bool {
        let defaults = UserDefaults.standard
        if let userName = defaults.value(forKey: "EmailKey"), let password = defaults.value(forKey: "PasswordKey"){
            return true
        }
        return false
    }
    
    
    
    
    @IBAction func onClick(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        if  let userName = emailText.text, let password = passwordText.text, userName != "", password != ""  {
            print("Valid username and password")
            
            defaults.set(emailText.text!, forKey: "EmailKey")
            defaults.set(passwordText.text!, forKey: "PasswordKey")
            defaults.synchronize()
            
            performSegue(withIdentifier: "GoToSecond", sender: self)
            
        }else{
            
            let alert = UIAlertController(title: "Alert", message: "Email or Password Not Matching", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

