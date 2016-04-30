//
//  PlayerDetailViewController.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {

    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerFirstNameLabel: UILabel!
    @IBOutlet weak var playerLastNameLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    var selectedPlayer : Player? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerImageView.image = UIImage(named: selectedPlayer!.playerImageName)
        playerFirstNameLabel.text = selectedPlayer!.playerFirstName
        playerLastNameLabel.text = selectedPlayer!.playerLastName
        playerScoreLabel.text = "\(selectedPlayer!.playerScore)"
        
        self.title = "\(selectedPlayer!.playerFirstName) \(selectedPlayer!.playerLastName)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
