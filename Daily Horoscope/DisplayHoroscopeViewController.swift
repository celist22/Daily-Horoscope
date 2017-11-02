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
    
    @IBOutlet weak var dateLBL: UILabel!
    
    @IBOutlet weak var sunsignLBL: UILabel!
    
    @IBOutlet weak var horoscopeTF: UITextView!
    
    @IBOutlet weak var sunsignImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sunsignLBL.text = ChoseZodiac.chosenSign
        // Do any additional setup after loading the view.
        
        // let link = "http://sandipbgt.com/theastrologer/api/horoscope/aquarius/today/"
        let url = URL(string: "http://sandipbgt.com/theastrologer/api/horoscope/virgo/today/")
        let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
            if error != nil {print(error!)}
            else {
                if let urlContent = data{
                    do{
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        DispatchQueue.main.async {
                            self.dateLBL.text = "\(jsonResult["date"]!!)"
                            //self.sunsignLBL.text = "\(jsonResult[""]!!)"
                            self.sunsignImage.image = #imageLiteral(resourceName: "virgo-woman-symbol")
                            self.horoscopeTF.text = "\(jsonResult["horoscope"]!!)"
                        }
                        //print(jsonResult)
                        //print(jsonResult["horoscope"]!!)
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
