//
//  SecondViewController.swift
//  Daily Horoscope
//
//  Created by List,Christopher on 10/6/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit
import MessageUI

class AboutPage: UIViewController, MFMailComposeViewControllerDelegate {
    
    // Worked on email functionality for contact us button but did not have success.

   // https://developer.apple.com/documentation/messageui/mfmailcomposeviewcontroller
    
    @IBAction func contactUs(_ sender: Any) {
//        if !MFMailComposeViewController.canSendMail() {
//            let composeVC = MFMailComposeViewController()
//            composeVC.mailComposeDelegate = self
//
//            // Configure the fields of the interface.
//            composeVC.setToRecipients(["address@example.com"])
//            composeVC.setSubject("Hello!")
//            composeVC.setMessageBody("Hello from California!", isHTML: false)
//
//            // Present the view controller modally.
//            self.present(composeVC, animated: true, completion: nil)
//        }
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

