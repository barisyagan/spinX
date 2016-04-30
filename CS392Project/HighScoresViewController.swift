//
//  HighScoresViewController.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit

class HighScoresViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var highScoresTable: UITableView!
    
    let dataSource = HighScoresDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.title = "High Scores"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let selectedCell = sender as! UITableViewCell
        
        let indexPath = highScoresTable.indexPathForCell(selectedCell)
    
        let detailController = segue.destinationViewController as! PlayerDetailViewController
        
        let selectedPlayer = dataSource.playerArray[indexPath!.row]
        highScoresTable.deselectRowAtIndexPath(highScoresTable.indexPathForCell(selectedCell)!, animated: true)
        detailController.selectedPlayer = selectedPlayer
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! HighScoresTableViewCell
        
        let player = dataSource.playerArray[indexPath.row]
        
        cell.playerImageView.image = UIImage(named: player.playerImageName)
        cell.firstNameLabel.text = player.playerFirstName
        cell.lastNameLabel.text = player.playerLastName
        cell.scoreLabel.text = "\(player.playerScore)"
        
        return cell;
    }
    
    
   
}

