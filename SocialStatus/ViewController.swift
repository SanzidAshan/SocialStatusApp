//
//  ViewController.swift
//  SocialStatus
//
//  Created by Sanzid Ashan on 3/19/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Mark :- Outlets of Constains
    
    @IBOutlet weak var friendshipCenterContains: NSLayoutConstraint!
    @IBOutlet weak var funnyCenterConstains: NSLayoutConstraint!
    @IBOutlet weak var newyearCenterConstains: NSLayoutConstraint!
    @IBOutlet weak var inspirationCenterConstains: NSLayoutConstraint!
    @IBOutlet weak var birthdayCenterConstrains: NSLayoutConstraint!
    @IBOutlet weak var romanticPopUpTextCenterConstains: NSLayoutConstraint!
    @IBOutlet weak var romanticCenterConstrains: NSLayoutConstraint!


    
    // Mark :- Outlets of Pop UpView
    
    @IBOutlet weak var funnyPopUpView: PopUpViewCustom!
    @IBOutlet weak var birthdayViewPopUp: UIView!
    @IBOutlet weak var romanticViewPopUp: UIView!
    @IBOutlet weak var friendshipPopUpView: PopUpViewCustom!
    @IBOutlet weak var newyearPopUpView: PopUpViewCustom!
    @IBOutlet weak var inspirationViewPopUp: PopUpViewCustom!
    

    // Mark :- Outlets of Custom Views
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    // Mark :- Outlets of Status Labels
    
    @IBOutlet weak var birthdayStatuSLabel: UILabel!
    @IBOutlet weak var funnyStatusLabel: UILabel!
    
    @IBOutlet weak var friendshipstatusLabel: UILabel!
    @IBOutlet weak var newyearStatusLabel: UILabel!
    @IBOutlet weak var inspirationStatusLabel: UILabel!
    @IBOutlet weak var romanticStatusLabel: UILabel!

    // Outlets of Images

    @IBOutlet weak var funnyImage: UIImageView!
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var newyearImage: UIImageView!
    @IBOutlet weak var inspireImage: UIImageView!
    @IBOutlet weak var romanticImage: UIImageView!
    @IBOutlet weak var birthdayImage: UIImageView!
    
    
    // Mark : - Outlets of Categeory Labels
    
    @IBOutlet weak var friendshipLabel: UILabel!
    @IBOutlet weak var funnyLabel: UILabel!
    @IBOutlet weak var romanticLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var inspireLabel: UILabel!
    @IBOutlet weak var newyearLabel: UILabel!
    
    // Mark :- Quote Image Outlets 
    
    
    @IBOutlet weak var quoteImage2: UIImageView!
    @IBOutlet weak var quoteImage3: UIImageView!
    @IBOutlet weak var quoteImage1: UIImageView!
    
    
    //Mark :- Background Outlets
    
    @IBOutlet weak var backgroundButtonOutlet: UIButton!
    @IBOutlet weak var backgrounImage: UIImageView!
   

    // Mark : ViewDidLoad Function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

   
    
    // Mark :- ViewDidAppear  Function
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        
    //Mark :- UIView Animate Function
        
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
    
    
    // Mark : - Sliding Pop Up Function
    
    
    func slidePopupWithView(){
        
        backgroundButtonOutlet.alpha = 1
        
        UIView.animate(withDuration: 0.7 , animations: {
            
            self.view.layoutIfNeeded()
        })
        
    }
    
    
    // Mark :- Closing pop up Function
    
    
    func tappingAnywhereToClosePopUp(){
        
        romanticCenterConstrains.constant = -600
        birthdayCenterConstrains.constant = -600
        inspirationCenterConstains.constant = -600
        newyearCenterConstains.constant = -600
        friendshipCenterContains.constant = -600
        funnyCenterConstains.constant = -600
        backgroundButtonOutlet.alpha = 0

        
    }
    
    
    // Mark : - Action Buttons for pop up Views
    
    
    
    @IBAction func inspirationButtonAction(_ sender: Any) {
        
        inspirationCenterConstains.constant = 0
       
        slidePopupWithView()
        
    }
    
    @IBAction func newyearButtonAction(_ sender: Any) {
        
        newyearCenterConstains.constant = 0
        
        slidePopupWithView()
    }
    
    @IBAction func friendshipButtonAction(_ sender: Any) {
        
        friendshipCenterContains.constant = 0
        slidePopupWithView()
    }
    
    @IBAction func funnButtonAction(_ sender: Any) {
        
        funnyCenterConstains.constant = 0
        
        slidePopupWithView()
    }
    
    @IBAction func romanticButtonAction(_ sender: Any) {
        
        romanticCenterConstrains.constant = 0
        slidePopupWithView()
    }
    
    @IBAction func birthdayButtonAction(_ sender: Any) {
        
        birthdayCenterConstrains.constant = 0
        slidePopupWithView()

        
    }
    
    // Mark:-  Background Button Action
    
    
    @IBAction func backGroundButton(_ sender: UIButton) {
        
        tappingAnywhereToClosePopUp()
    
        
    }
    
    // Mark :- Status Changing Actions
    
    @IBAction func nextRomanticStatus(_ sender: Any) {
        
        romanticStatusLabel.text = DataModel().getRomanticData()

    }
    
    @IBAction func nextBirthdayButton(_ sender: Any) {
        
        
        birthdayStatuSLabel.text = DataModel().getBirthdayData()

    }
   
    @IBAction func nextInspirationAction(_ sender: Any) {
        
        
        inspirationStatusLabel.text = DataModel().getInspirationData()

    }
    
    @IBAction func nextNewyearAction(_ sender: Any) {
        
        
        newyearStatusLabel.text = DataModel().newyearData()

        
        
    }
  
    @IBAction func nextFriendship(_ sender: Any) {
        
        
        friendshipstatusLabel.text = DataModel().friendshipData()
        
    }
    
    @IBAction func nextFunnnyAction(_ sender: Any) {
        
        funnyStatusLabel.text = DataModel().funnyData()
        

    }

   
    
   
    // Mark :- Share Status Actions
    
    @IBAction func shareFunnyAction(_ sender: UIButton) {
        
        displayShareSheet(shareContent: funnyStatusLabel.text!)
        
    }
    
    @IBAction func shareRomanticStatus(_ sender: UIButton) {
        
        displayShareSheet(shareContent: romanticStatusLabel.text!)
        
    }
    
    @IBAction func shareBirthdayButton(_ sender: UIButton) {
        
        displayShareSheet(shareContent:birthdayStatuSLabel.text!)
        
    }
    
    @IBAction func shareInspirationAction(_ sender: UIButton) {
        
        displayShareSheet(shareContent:inspirationStatusLabel.text!)
    
    }
    
    @IBAction func shareNewYear(_ sender: UIButton) {
        
        displayShareSheet(shareContent:newyearStatusLabel.text!)
        
    }
    
    @IBAction func shareFriendship(_ sender: UIButton) {
        
        displayShareSheet(shareContent:friendshipstatusLabel.text!)
        
        
    }
    
    
}


