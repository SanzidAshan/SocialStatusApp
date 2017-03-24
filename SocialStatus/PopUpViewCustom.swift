//
//  PopUpViewCustom.swift
//  SocialStatus
//
//  Created by Sanzid Ashan on 3/23/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit

@IBDesignable class PopUpViewCustom : UIView {
    
    
    @IBInspectable var cornerRadious : CGFloat = 0 {
        
        didSet{
            self.layer.cornerRadius = cornerRadious
            self.layer.masksToBounds = true 
            
        }
    }
    



}
