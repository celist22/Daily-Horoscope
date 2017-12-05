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

        // Do any additional setup after loading the view.
        let when = DispatchTime.now() + 3
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.performSegue(withIdentifier: "startToMainView", sender: self)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
