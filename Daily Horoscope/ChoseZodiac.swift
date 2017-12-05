
//
//  FirstViewController.swift
//  Daily Horoscope
//
//  Created by List,Christopher on 10/6/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit
//class for home page where we chose our date of birth or a zodiac sign to navigate to Display oroscope view controller
class ChoseZodiac: UIViewController {
    
    static var chosenSign : Zodiac?
    @IBOutlet weak var birthdayDP: UIDatePicker!
    var selectedDate : Date? = nil
    var sign : String? = nil
   //method called when we click on a zodiac sign
    @IBAction func tappedASign(_ sender: UIButton) {
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
    
    //Button under datepicker (birthdayDP) that pulls data from the datepicker and choses a sign
    @IBAction func showHoroscope(_ sender: UIButton) {
        let selectedDate = birthdayDP.calendar
        if selectedDate != nil {
            let date = birthdayDP.date
            let calendar = Calendar.current
            //let year = calendar.component(.year, from: date)  // unneccesary variable, left in in case we want to add more horoscope functionality.  Like Chinese zodiac sign for instance.
            let month = calendar.component(.month, from: date)
            let day = calendar.component(.day, from: date)
            
            if ((month == 12 && day >= 22 && day <= 31) || (month ==  1 && day >= 1 && day <= 19)) {
                ChoseZodiac.chosenSign = Zodiac("Capricorn", #imageLiteral(resourceName: "capricorn-astrological-sign-of-head-black-silhouette-with-horns"))
            }
            else if ((month ==  1 && day >= 20 && day <= 31) || (month ==  2 && day >= 1 && day <= 17)){
                ChoseZodiac.chosenSign = Zodiac("Aquarius", #imageLiteral(resourceName: "aquarius-astrological-sign-symbol"))
            }
            else if ((month ==  2 && day >= 18 && day <= 29) || (month ==  3 && day >= 1 && day <= 19)){
                ChoseZodiac.chosenSign = Zodiac("Pisces", #imageLiteral(resourceName: "pisces-astrological-sign-symbol (3)"))
            }
            else if ((month ==  3 && day >= 20 && day <= 31) || (month ==  4 && day >= 1 && day <= 19)){
                ChoseZodiac.chosenSign = Zodiac("Aries", #imageLiteral(resourceName: "aries-zodiac-symbol-of-frontal-goat-head (1)"))
            }
            else if ((month ==  4 && day >= 20 && day <= 30) || (month ==  5 && day >= 1 && day <= 20)){
                ChoseZodiac.chosenSign = Zodiac("Taurus", #imageLiteral(resourceName: "taurus-zodiac-symbol-of-bull-head-front"))
            }
            else if ((month ==  5 && day >= 21 && day <= 31) || (month ==  6 && day >= 1 && day <= 20)){
                ChoseZodiac.chosenSign = Zodiac("Gemini", #imageLiteral(resourceName: "gemini-female-twins-couple-symbol"))
            }
            else if ((month ==  6 && day >= 21 && day <= 30) || (month ==  7 && day >= 1 && day <= 22)){
                ChoseZodiac.chosenSign = Zodiac("Cancer", #imageLiteral(resourceName: "crab-cancer-symbol"))
            }
            else if ((month ==  7 && day >= 23 && day <= 31) || (month ==  8 && day >= 1 && day <= 22)){
                ChoseZodiac.chosenSign = Zodiac("Leo", #imageLiteral(resourceName: "leo-lion-head-side"))
            }
            else if ((month ==  8 && day >= 23 && day <= 31) || (month ==  9 && day >= 1 && day <= 22)){
                ChoseZodiac.chosenSign = Zodiac("Virgo", #imageLiteral(resourceName: "virgo-woman-symbol"))
            }
            else if ((month ==  9 && day >= 23 && day <= 30) || (month == 10 && day >= 1 && day <= 22)){
                ChoseZodiac.chosenSign = Zodiac("Libra", #imageLiteral(resourceName: "libra-scale-balance-symbol"))
            }
            else if ((month == 10 && day >= 23 && day <= 31) || (month == 11 && day >= 1 && day <= 21)){
                ChoseZodiac.chosenSign = Zodiac("Scorpio", #imageLiteral(resourceName: "scorpio-vertical-animal-shape-of-zodiac-symbol"))
            }
            else if ((month == 11 && day >= 22 && day <= 30) || (month == 12 && day >= 1 && day <= 21)){
                ChoseZodiac.chosenSign = Zodiac("Sagittarius", #imageLiteral(resourceName: "sagittarius-sign"))
            }
            else{
                sign = nil
            }
            
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

