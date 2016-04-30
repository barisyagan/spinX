//
//  HighScoresDataSource.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit

class HighScoresDataSource: NSObject {
    var playerArray : [Player] = []
    
    override init ()
    {
        super.init()
        
        let player1 = Player(imageName:"reha", firstName: "Reha", lastName: "Civanlar", score: 100)
        let player2 = Player(imageName:"baris",firstName: "Baris", lastName: "Aktemur", score: 90)
        let player3 = Player(imageName:"erhan",firstName: "Erhan", lastName: "Oztop", score: 80)
        let player4 = Player(imageName:"tanju",firstName: "Tanju", lastName: "Erdem", score: 70)
        let player5 = Player(imageName:"murat",firstName: "Murat", lastName: "Sensoy", score: 60)
        let player6 = Player(imageName:"ismail",firstName: "Ismail", lastName: "Ari", score: 55)
        let player7 = Player(imageName:"hasan",firstName: "Hasan", lastName: "Sozer", score: 50)
        let player8 = Player(imageName:"gonca",firstName: "Gonca", lastName: "Gursun", score: 45)
        let player9 = Player(imageName:"furkan",firstName: "Furkan", lastName: "Kirac", score: 40)
        let player10 = Player(imageName:"oguz",firstName: "Oguz", lastName: "Sunay", score: 35)
        let player11 = Player(imageName:"meltem",firstName: "Meltem", lastName: "Denizel", score: 99)
        let player12 = Player(imageName:"ekrem",firstName: "Ekrem", lastName: "Duman", score: 87)
        let player13 = Player(imageName:"okan",firstName: "Okan", lastName: "Ozener", score: 85)
        let player14 = Player(imageName:"burcu",firstName: "Burcu", lastName: "Balcik", score: 81)
        let player15 = Player(imageName:"erhun",firstName: "Erhun", lastName: "Kundakcioglu", score: 69)
        let player16 = Player(imageName:"erinc",firstName: "Erinc", lastName: "Albey", score: 68)
        let player17 = Player(imageName:"ali",firstName: "Ali", lastName: "Ekici", score: 63)
        let player18 = Player(imageName:"dilek",firstName: "Dilek", lastName: "Gunnec", score: 53)
        let player19 = Player(imageName:"elvin",firstName: "Elvin", lastName: "Gokturk", score: 46)
        let player20 = Player(imageName:"enis",firstName: "Enis", lastName: "Kayis", score: 22)
        
        
        playerArray.append(player1)
        playerArray.append(player2)
        playerArray.append(player3)
        playerArray.append(player4)
        playerArray.append(player5)
        playerArray.append(player6)
        playerArray.append(player7)
        playerArray.append(player8)
        playerArray.append(player9)
        playerArray.append(player10)
        playerArray.append(player11)
        playerArray.append(player12)
        playerArray.append(player13)
        playerArray.append(player14)
        playerArray.append(player15)
        playerArray.append(player16)
        playerArray.append(player17)
        playerArray.append(player18)
        playerArray.append(player19)
        playerArray.append(player20)
        
    }
}
