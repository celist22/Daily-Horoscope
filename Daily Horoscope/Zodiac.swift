//
//  Zodiac.swift
//  Daily Horoscope
//
//  Created by Reddygari,Amarendar Reddy on 11/1/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import Foundation
import UIKit

class Zodiac{
    var sign:String
    var zodiacImage:UIImage
    
    init(_ sign:String,_ zodiacImage:UIImage){
        self.sign = sign
        self.zodiacImage = zodiacImage
    }
}
