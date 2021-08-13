//
//  HomeViewController.swift
//  UserLogInUsingUserDefaults
//
//  Created by rd on 12/07/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: self, action: nil)    }

    
    
    @IBAction func logOutButton(_ sender: Any) {
        print("logout button tapped")
        UserDefaults.standard.removeObject(forKey: "EmailKey")
        UserDefaults.standard.removeObject(forKey: "PasswordKey")
        UserDefaults.standard.synchronize()
        
        dismiss(animated: true, completion: nil)

    }
    
    

}
