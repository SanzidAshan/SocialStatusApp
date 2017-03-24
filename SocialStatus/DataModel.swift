//
//  FactModel.swift
//  FunFact
//
//  Created by SanzidAshan on 3/9/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import Foundation
import GameKit

class DataModel   {
    
    //Mark:- Romantic Array Status
    
    var romanticArray = ["Every love story is beautiful but ours is my favorite" , "Being someone’s first love may be great, but to be their last is beyond perfect." ,"Without you, I am nothing. With you, I am something. Together we are Everything." ,"A person who loves you truly will never let you go whatever the situation is"," Love is when you look into someones eyes and see everything you need." , "I will be yours, you will be mine and together we will be one love."  ]
    
    
    //Mark:- Birthday Array Status

    var birthdayArray = ["May you live as long as you want and never want as long as you live." , "The way I see it, you should live everyday like its your birthday." ,"May your birthday be filled with many happy hours and your life with many happy birthdays. HAPPY BIRTHDAY!" ,"You mean everything to me … I Love You … HAPPY BIRTHDAY! Have a day as special as you are!"," Wishing you happy endings and great beginnings. Happy Birthday!" , "Thanking my Dear Lord for another wonderful year of life full of blessings and thanks for all the birthday wishes."  ]
    
    
     var inspirationArray = ["May you live as long as you want and never want as long as you live." , "The way I see it, you should live everyday like its your birthday." ,"May your birthday be filled with many happy hours and your life with many happy birthdays. HAPPY BIRTHDAY!" ,"You mean everything to me … I Love You … HAPPY BIRTHDAY! Have a day as special as you are!"," Wishing you happy endings and great beginnings. Happy Birthday!" , "Thanking my Dear Lord for another wonderful year of life full of blessings and thanks for all the birthday wishes."  ]
    
    
    var newyearArray = ["May you live as long as you want and never want as long as you live." , "The way I see it, you should live everyday like its your birthday." ,"May your birthday be filled with many happy hours and your life with many happy birthdays. HAPPY BIRTHDAY!" ,"You mean everything to me … I Love You … HAPPY BIRTHDAY! Have a day as special as you are!"," Wishing you happy endings and great beginnings. Happy Birthday!" , "Thanking my Dear Lord for another wonderful year of life full of blessings and thanks for all the birthday wishes."  ]
    
    var friendshipArray = ["May you live as long as you want and never want as long as you live." , "The way I see it, you should live everyday like its your birthday." ,"May your birthday be filled with many happy hours and your life with many happy birthdays. HAPPY BIRTHDAY!" ,"You mean everything to me … I Love You … HAPPY BIRTHDAY! Have a day as special as you are!"," Wishing you happy endings and great beginnings. Happy Birthday!" , "Thanking my Dear Lord for another wonderful year of life full of blessings and thanks for all the birthday wishes."  ]
    
    
    var funnyArray = ["May you live as long as you want and never want as long as you live." , "The way I see it, you should live everyday like its your birthday." ,"May your birthday be filled with many happy hours and your life with many happy birthdays. HAPPY BIRTHDAY!" ,"You mean everything to me … I Love You … HAPPY BIRTHDAY! Have a day as special as you are!"," Wishing you happy endings and great beginnings. Happy Birthday!" , "Thanking my Dear Lord for another wonderful year of life full of blessings and thanks for all the birthday wishes."  ]
    
    
    
    //Mark:- Getting Romantic Array Data
    
    func getRomanticData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: romanticArray.count)
        return romanticArray[randomNumber]
        
        
    }
    
    //Mark:- Getting Birthday Array Data

    func getBirthdayData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: birthdayArray.count)
        return birthdayArray[randomNumber]
        
        
    }
    
    func getInspirationData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: inspirationArray.count)
        return inspirationArray[randomNumber]
        
        
    }
    
    func newyearData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: newyearArray.count)
        return newyearArray[randomNumber]
        
        
    }
    
    func friendshipData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: friendshipArray.count)
        return friendshipArray[randomNumber]
        
        
    }
    
    func funnyData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: funnyArray.count)
        return funnyArray[randomNumber]
        
        
    }
    
  
    
}
