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
    
    
    //Mark:- Inspiration Array Status

     var inspirationArray = ["“The Way Get Started Is To Quit Talking And Begin Doing.” -Walt Disney" , "“The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees The Opportunity In Every Difficulty.” -Winston Churchill" ,"“Don’t Let Yesterday Take Up Too Much Of Today.” -Will Rogers"," “You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.”- Unknown" , "“It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.”- Vince Lombardi"  ]
    
    //Mark:- Newyear Array Status

    var newyearArray = ["Cheers to a new year and another chance for us to get it right." , "We will open the book. Its pages are blank. We are going to put words on them ourselves. The book is called Opportunity and its first chapter is New Year's Day." ,"I would say happy new year but it's not happy; it's exactly the same as last year except colder." ,"I made no resolutions for the New Year. The habit of making plans, of criticizing, sanctioning and molding my life, is too much of a daily event for me."," New Year’s Day… now is the accepted time to make your regular annual good resolutions. Next week you can begin paving hell with them as usual." , "Cheers to a new year and another chance for us to get it right", " “Year’s end is neither an end nor a beginning but a going on, with all the wisdom that experience can instill in us" ]
    
    
    
    //Mark:- Friendship Array Status

    
    var friendshipArray = ["A real friend is one who walks in when the rest of the world walks out." , "If you live to be 100, I hope I live to be 100 minus 1 day, so I never have to live without you." ,"I like to listen. I have learned a great deal from listening carefully. Most people never listen" ,"Friendship is born at that moment when one person says to another, ‘What! You too? I thought I was the only one."," True friendship comes when the silence between two people is comfortable." , "Sweet is the memory of distant friends! Like the mellow rays of the departing sun, it falls tenderly, yet sadly, on the heart."  ]
    
    //Mark:- Funny Array Status

    
    var funnyArray = ["Before you marry a person, you should first make them use a computer with slow Internet service to see who they really are." , "I thought I was promiscuous, but it turns out I was just thorough" ,"If you text 'I love you' to a person and the person writes back an emoji — no matter what that emoji is, they don't love you back" ,"Obviously, if I was serious about having a relationship with someone long-term, the last people I would introduce him to would be my family."," Love is a lot like a backache, it doesn't show up on X-rays, but you know it's there" , "Love is grand; divorce is a hundred grand"  ]
    
    
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
    
    //Mark:- Getting Inspiration Array Data

    func getInspirationData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: inspirationArray.count)
        return inspirationArray[randomNumber]
        
        
    }
    
    //Mark:- Getting Newyear Array Data

    
    func newyearData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: newyearArray.count)
        return newyearArray[randomNumber]
        
        
    }
    
    //Mark:- Getting Friendship Array Data

    
    func friendshipData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: friendshipArray.count)
        return friendshipArray[randomNumber]
        
        
    }
    
    
    //Mark:- Getting Funny Array Data
    

    func funnyData() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: funnyArray.count)
        return funnyArray[randomNumber]
        
        
    }
    
  
    
}
