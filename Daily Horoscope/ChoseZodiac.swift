//
//  FirstViewController.swift
//  Daily Horoscope
//
//  Created by List,Christopher on 10/6/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class ChoseZodiac: UIViewController {

    static var chosenSign : String?
    @IBAction func clickedButton(_ sender: UIButton) {
        switch sender.tag {
        case 0: ChoseZodiac.chosenSign = "Aries"
        case 1 : ChoseZodiac.chosenSign = "Taurus"
        case 2: ChoseZodiac.chosenSign = "Gemini"
        case 3: ChoseZodiac.chosenSign = "Leo"
        case 4: ChoseZodiac.chosenSign = "Virgo"
        case 5: ChoseZodiac.chosenSign = "Libra"
        case 6: ChoseZodiac.chosenSign = "Scorpio"
        case 7: ChoseZodiac.chosenSign = "Capricorn"
        case 8: ChoseZodiac.chosenSign = "Aquarius"
        case 9: ChoseZodiac.chosenSign = "Pisces"
        default : ChoseZodiac.chosenSign = "No Sign Selected"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

