//
//  Player.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit

class Player: NSObject {
    
    let playerImageName : String
    let playerFirstName : String
    let playerLastName : String
    let playerScore : Int
    
    init (imageName :String, firstName : String, lastName : String, score : Int)
    {
        playerImageName = imageName
        playerFirstName = firstName
        playerLastName = lastName
        playerScore = score
    }

}
