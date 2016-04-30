//
//  HighScoresTableViewCell.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit

class HighScoresTableViewCell: UITableViewCell {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var playerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
