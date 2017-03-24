//
//  FactModel.swift
//  FunFact
//
//  Created by SanzidAshan on 3/9/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import Foundation
import GameKit

class FactModel {
    // array of facts 
    
    var factArray = ["Fact 1  👿 . Osrriches run faster than horses" , "Fact 2  👿. Shakib is the best alrounder in cricket" ,"Fact 3  👿 . Osrriches run faster than horses" ,"Fact 4  👿 . Shakib is the best alrounder in cricket","Fact 5  👿 . Osrriches run faster than horses" , "Fact 6  👿 . Shakib is the best alrounder in cricket "  ]
    
    func getFact() -> String {
        
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: factArray.count)
        return factArray[randomNumber]
        
        
    }
    
}
