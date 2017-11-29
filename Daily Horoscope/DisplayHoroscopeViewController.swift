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
    
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var sunsignLBL: UILabel!
    @IBOutlet weak var horoscopeTF: UITextView!
    @IBOutlet weak var sunsignImage: UIImageView!

    var apiURL:String = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign?.sign.lowercased())/today/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        today(nil)
    }
    
    @IBAction func today(_ sender: UIButton?){
        apiURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign!.sign.lowercased())/today/"
        getHoroscope(apiLink: apiURL, zodiacImage: ChoseZodiac.chosenSign!.zodiacImage)
    }
    
    @IBAction func yesterday(_ sender: UIButton){
        apiURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign!.sign.lowercased())/yesterday/"
        getHoroscope(apiLink: apiURL, zodiacImage: ChoseZodiac.chosenSign!.zodiacImage)
    }
    
    @IBAction func tomorrow(_ sender: UIButton){
        apiURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(ChoseZodiac.chosenSign!.sign.lowercased())/tomorrow/"
        getHoroscope(apiLink: apiURL, zodiacImage: ChoseZodiac.chosenSign!.zodiacImage)
    }
    
    
    
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
