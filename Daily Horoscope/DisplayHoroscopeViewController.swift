//
//  DisplayHoroscopeViewController.swift
//  Daily Horoscope
//
//  Created by student on 10/20/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class DisplayHoroscopeViewController: UIViewController {
    
    var chosenHoroscope:Zodiac?
    //variables for visual elements on view controller like buttons, extfields etc,.
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var sunsignLBL: UILabel!
    @IBOutlet weak var horoscopeTF: UITextView!
    @IBOutlet weak var sunsignImage: UIImageView!
    @IBOutlet weak var yesterdayBTN: UIButton!
    @IBOutlet weak var todayBTN: UIButton!
    @IBOutlet weak var tomorrowBTN: UIButton!
    
    //api url which is used to pull horoscope information using sign selected
    var apiURL:String = "http://sandipbgt.com/theastrologer/api/horoscope/\(String(describing: ChoseZodiac.chosenSign?.sign.lowercased()))/today/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        today(nil)
    }
    
    // pulls horoscope for today calls getHorosope method
    @IBAction func today(_ sender: UIButton?){
        apiURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign!.sign.lowercased())/today/"
        getHoroscope(apiLink: apiURL, zodiacImage: ChoseZodiac.chosenSign!.zodiacImage)
        todayBTN.backgroundColor = UIColor.lightGray
        tomorrowBTN.backgroundColor = UIColor.white
        yesterdayBTN.backgroundColor = UIColor.white
    }
    
    // pulls horoscope for yesterday calls getHorosope method
    @IBAction func yesterday(_ sender: UIButton){
        apiURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign!.sign.lowercased())/yesterday/"
        getHoroscope(apiLink: apiURL, zodiacImage: ChoseZodiac.chosenSign!.zodiacImage)
        yesterdayBTN.backgroundColor = UIColor.lightGray
        tomorrowBTN.backgroundColor = UIColor.white
        todayBTN.backgroundColor = UIColor.white
    }
    
    // pulls horoscope for tomorrow calls getHorosope method
    @IBAction func tomorrow(_ sender: UIButton){
        apiURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign!.sign.lowercased())/tomorrow/"
        getHoroscope(apiLink: apiURL, zodiacImage: ChoseZodiac.chosenSign!.zodiacImage)
        tomorrowBTN.backgroundColor = UIColor.lightGray
        todayBTN.backgroundColor = UIColor.white
        yesterdayBTN.backgroundColor = UIColor.white
    }
    
    // actual method which does api call to get horoscope data that shows up on the page
    func getHoroscope(apiLink:String,zodiacImage:UIImage){
        let url = URL(string: apiLink)
        let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
            if error != nil {print(error!)}
            else {
                if let urlContent = data{
                    do{
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        DispatchQueue.main.async {
                            self.sunsignLBL.text = "\(jsonResult["sunsign"]!!)"
                            self.dateLBL.text = "\(jsonResult["date"]!!)"
                            self.sunsignImage.image = zodiacImage
                            self.horoscopeTF.text = "\(jsonResult["horoscope"]!!)"
                        }
                    } catch{
                        print("JSON processing failed")
                    }
                }
            }
        }
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
