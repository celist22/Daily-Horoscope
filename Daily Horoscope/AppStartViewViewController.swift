//
//  AppStartViewViewController.swift
//  Daily Horoscope
//
//  Created by Reddygari,Amarendar Reddy on 12/4/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class AppStartViewViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Segue to navigate to home page after 2 seconds delay.
        let when = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.performSegue(withIdentifier: "startToMainView", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
