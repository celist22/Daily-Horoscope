//
//  DisplayHoroscopeViewController.swift
//  Daily Horoscope
//
//  Created by student on 10/20/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class DisplayHoroscopeViewController: UIViewController {

    var chosenHoroscope:String?
    
    
    @IBOutlet weak var blankLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
blankLabel.text = ChoseZodiac.chosenSign
        // Do any additional setup after loading the view.
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
