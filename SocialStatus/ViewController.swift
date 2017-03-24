//
//  ViewController.swift
//  SocialStatus
//
//  Created by Sanzid Ashan on 3/19/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var friendshipCenterContains: NSLayoutConstraint!
    @IBOutlet weak var funnyCenterConstains: NSLayoutConstraint!
    
    @IBOutlet weak var friendshipstatusLabel: UILabel!
    @IBOutlet weak var newyearCenterConstains: NSLayoutConstraint!
    
    @IBOutlet weak var inspirationCenterConstains: NSLayoutConstraint!
    
    @IBOutlet weak var funnyPopUpView: PopUpViewCustom!
    @IBOutlet weak var funnyStatusLabel: UILabel!
    @IBOutlet weak var friendshipLabel: UILabel!
    @IBOutlet weak var friendshipPopUpView: PopUpViewCustom!
    @IBOutlet weak var newyearStatusLabel: UILabel!
    
    @IBOutlet weak var newyearPopUpView: PopUpViewCustom!
    
    // Mark :- Outlets 
    
    @IBOutlet weak var inspirationStatusLabel: UILabel!
    @IBOutlet weak var inspirationViewPopUp: PopUpViewCustom!
    
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
    
    @IBAction func inspirationButtonAction(_ sender: Any) {
        
        inspirationCenterConstains.constant = 0
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
        
    }
    
    @IBAction func newyearButtonAction(_ sender: Any) {
        
        newyearCenterConstains.constant = 0
        
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
        
    }
    
    @IBAction func friendshipButtonAction(_ sender: Any) {
        
        friendshipCenterContains.constant = 0
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
    }
    
    @IBAction func funnButtonAction(_ sender: Any) {
        
        funnyCenterConstains.constant = 0
        
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
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
        inspirationCenterConstains.constant = -600
        newyearCenterConstains.constant = -600
        friendshipCenterContains.constant = -600
        funnyCenterConstains.constant = -600
       

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
    
    @IBAction func nextInspirationAction(_ sender: Any) {
        
        
    }
    
    @IBAction func shareInspirationAction(_ sender: Any) {
        
        
    }
    
    @IBAction func nextNewyearAction(_ sender: Any) {
        
        
    }
    @IBAction func shareNewYear(_ sender: Any) {
    }
    
    
    @IBAction func nextFriendship(_ sender: Any) {
        
        
    }
    
    
    @IBAction func shareFriendship(_ sender: Any) {
    }
    
    @IBAction func nextFunnyAction(_ sender: Any) {
        
        
    }
    
    @IBAction func shareFunnyAction(_ sender: Any) {
        
        
    }
}


