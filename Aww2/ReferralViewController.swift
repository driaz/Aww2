//
//  ReferralViewController.swift
//  Aww2
//
//  Created by Daniel Riaz on 2/19/15.
//  Copyright (c) 2015 Daniel Riaz. All rights reserved.
//

import UIKit

class ReferralViewController: UIViewController {
    
    @IBAction func shareCutie(sender: AnyObject) {

        var shareMessage: String = "The Cutie app is sooo cute! Check it out at http://www.cutieapp.net"
        
        var shareActivityVC: UIActivityViewController = UIActivityViewController(activityItems: [shareMessage], applicationActivities: nil)
        
        shareActivityVC.excludedActivityTypes = [UIActivityTypePrint, UIActivityTypePostToFlickr, UIActivityTypePostToTencentWeibo, UIActivityTypePostToVimeo, UIActivityTypeAddToReadingList, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeSaveToCameraRoll]
        
        self.presentViewController(shareActivityVC, animated: true, completion: nil)
        
    
        println("testing connection")
    
    }
    
    @IBOutlet weak var shareButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        shareButton.layer.borderColor = UIColor.whiteColor().CGColor
        tabBarItem.selectedImage = UIImage(named: "users_two_filled")
        shareButton.layer.shadowColor = UIColor.blackColor().CGColor
        shareButton.layer.shadowOpacity = 0.8
        shareButton.layer.shadowRadius = 1
        shareButton.layer.shadowOffset = CGSizeMake(2.0, 2.0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        
        if (self.view.frame.width == 320 && self.view.frame.height == 480) {
            return true
        }
        
        return false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
