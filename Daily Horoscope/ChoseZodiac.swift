//
//  FirstViewController.swift
//  Daily Horoscope
//
//  Created by List,Christopher on 10/6/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class ChoseZodiac: UIViewController {

    static var chosenSign : Zodiac?
    @IBAction func clickedButton(_ sender: UIButton) {
        switch sender.tag {
        case 0: ChoseZodiac.chosenSign = Zodiac("Aries", #imageLiteral(resourceName: "aries-zodiac-symbol-of-frontal-goat-head (1)"))
        case 1: ChoseZodiac.chosenSign = Zodiac("Taurus", #imageLiteral(resourceName: "taurus-zodiac-symbol-of-bull-head-front"))
        case 2: ChoseZodiac.chosenSign = Zodiac("Gemini", #imageLiteral(resourceName: "gemini-female-twins-couple-symbol"))
        case 3: ChoseZodiac.chosenSign = Zodiac("Cancer", #imageLiteral(resourceName: "crab-cancer-symbol"))
        case 4: ChoseZodiac.chosenSign = Zodiac("Leo", #imageLiteral(resourceName: "leo-lion-head-side"))
        case 5: ChoseZodiac.chosenSign = Zodiac("Virgo", #imageLiteral(resourceName: "virgo-woman-symbol"))
        case 6: ChoseZodiac.chosenSign = Zodiac("Libra", #imageLiteral(resourceName: "libra-scale-balance-symbol"))
        case 7: ChoseZodiac.chosenSign = Zodiac("Scorpio", #imageLiteral(resourceName: "scorpio-vertical-animal-shape-of-zodiac-symbol"))
        case 8: ChoseZodiac.chosenSign = Zodiac("Sagittarius", #imageLiteral(resourceName: "sagittarius-sign"))
        case 9: ChoseZodiac.chosenSign = Zodiac("Capricorn", #imageLiteral(resourceName: "capricorn-astrological-sign-of-head-black-silhouette-with-horns"))
        case 10: ChoseZodiac.chosenSign = Zodiac("Aquarius", #imageLiteral(resourceName: "aquarius-astrological-sign-symbol"))
        case 11: ChoseZodiac.chosenSign = Zodiac("Pisces", #imageLiteral(resourceName: "pisces-astrological-sign-symbol (3)"))
        default : print("No sign selected")
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

