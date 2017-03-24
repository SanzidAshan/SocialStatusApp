//
//  ViewController.swift
//  SocialStatus
//
//  Created by Sanzid Ashan on 3/19/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Mark :- Outlets 
    
    
    @IBOutlet weak var birthdayStatusLabel: UILabel!
    
    @IBOutlet weak var birthdayCenterConstrains: NSLayoutConstraint!
    @IBOutlet weak var birthdayViewPopUp: UIView!
    @IBOutlet weak var romanticPopUpTextCenterConstains: NSLayoutConstraint!
    @IBOutlet weak var backgroundButtonOutlet: UIButton!
    @IBOutlet weak var romanticStatusLabel: UILabel!
    @IBOutlet weak var romanticViewPopUp: UIView!
    @IBOutlet weak var romanticCenterConstrains: NSLayoutConstraint!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var quoteImage2: UIImageView!
    @IBOutlet weak var quoteImage3: UIImageView!
    @IBOutlet weak var quoteImage1: UIImageView!
    @IBOutlet weak var backgrounImage: UIImageView!
    @IBOutlet weak var funnyLabel: UILabel!
    @IBOutlet weak var romanticLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var inspireLabel: UILabel!
    @IBOutlet weak var newyearLabel: UILabel!
    @IBOutlet weak var friendshipLabel: UILabel!
    @IBOutlet weak var romanticImage: UIImageView!
    @IBOutlet weak var birthdayImage: UIImageView!

    @IBOutlet weak var funnyImage: UIImageView!
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var newyearImage: UIImageView!
    @IBOutlet weak var inspireImage: UIImageView!
    
    
    // Mark : ViewDidLoad Function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    
    // Mark :- ViewDidAppear  Function
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        
        //Mark :- UI Animate Function
        
        UIView.animate(withDuration: 1, animations: {
            self.romanticImage.alpha = 1
            self.romanticLabel.alpha = 1
            self.backgrounImage.alpha = 1
            self.view1.alpha = 1
            self.view2.alpha = 1
            self.view3.alpha = 1
            
        }) { (true) in
            self.birthday()
            
            
        }
    }
    
    func birthday(){
        UIView.animate(withDuration: 1, animations: {
            self.birthdayImage.alpha = 1
            self.birthdayLabel.alpha = 1
            self.quoteImage1.alpha = 1
        } , completion: {  (true) in
             self.inspire()
            
            })

        }
    
    func inspire(){
        UIView.animate(withDuration: 1, animations: {
            self.inspireImage.alpha = 1
            self.inspireLabel.alpha = 1
            self.quoteImage2.alpha = 1

        } , completion: {  (true) in
            self.newyear()
            
        })
        
    }
    
    func newyear(){
        UIView.animate(withDuration: 1, animations: {
            self.newyearImage.alpha = 1
            self.newyearLabel.alpha = 1

        } , completion: {  (true) in
            self.friend()
            
        })
        
    }
    
    func friend(){
        UIView.animate(withDuration: 1, animations: {
            self.friendImage.alpha = 1
            self.friendshipLabel.alpha = 1
            self.quoteImage3.alpha = 1

        } , completion: {  (true) in
            self.funny()
            
        })
        
    }
    
    func funny(){
        
        UIView.animate(withDuration: 1, animations: {
            
            self.funnyImage.alpha = 1
            self.funnyLabel.alpha = 1
            
        })
    }

    
    // Mark : - Share Sheet Function 
    
    func displayShareSheet(shareContent:String) {
        
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString], applicationActivities: nil)
        present(activityViewController, animated: true, completion: {})
    }
    
    
    
    @IBAction func romanticButtonAction(_ sender: Any) {
        
        romanticCenterConstrains.constant = 0
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
    }
    @IBAction func backGroundButton(_ sender: UIButton) {
        
        romanticCenterConstrains.constant = -600
        birthdayCenterConstrains.constant = -600

        backgroundButtonOutlet.alpha = 0
        
    }
    

    
    @IBAction func nextRomanticStatus(_ sender: Any) {
        
       
        
        romanticStatusLabel.text = DataModel().getRomanticData()

        
    }
    
    @IBAction func shareRomanticStatus(_ sender: Any) {
        

        displayShareSheet(shareContent: romanticStatusLabel.text!)
        
    
        
    }
   
    @IBAction func birthdayButtonAction(_ sender: Any) {
        
        birthdayCenterConstrains.constant = 0
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
    }
    @IBAction func nextBirthdayButton(_ sender: Any) {
        
        
        birthdayStatusLabel.text = DataModel().getBirthdayData()

        
        
    }
    @IBAction func shareBirthdayButton(_ sender: Any) {
        
        
        displayShareSheet(shareContent:birthdayStatusLabel.text!)

        
        
    }
}


