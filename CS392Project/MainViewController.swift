//
//  ViewController.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/25/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var instructionsButton: UIButton!
    @IBOutlet weak var highScoresButton: UIButton!
    
    @IBAction func infoTapped(sender: AnyObject) {
    }
    var gameSound: AVAudioPlayer?
    var isSoundOn: Bool = true
    
    @IBOutlet weak var soundButton: UIButton!
    
    @IBAction func startTapped(sender: AnyObject) {
        gameSound?.volume = 0
        soundButton.setImage(UIImage(named: "soundOff.png"), forState: UIControlState.Normal)
        isSoundOn = false
    }
    @IBAction func instructionsTapped(sender: AnyObject) {
        
    }
    @IBAction func highScoresTapped(sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       self.title = "SUN"
        
        startButton.layer.cornerRadius = 10
        startButton.layer.borderWidth = 1
        startButton.layer.borderColor = UIColor.clearColor().CGColor
        startButton.backgroundColor = UIColor.yellowColor()
        startButton.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        
        instructionsButton.layer.cornerRadius = 10
        instructionsButton.layer.borderWidth = 1
        instructionsButton.layer.borderColor = UIColor.clearColor().CGColor
        instructionsButton.backgroundColor = UIColor.yellowColor()
        instructionsButton.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        
        highScoresButton.layer.cornerRadius = 10
        highScoresButton.layer.borderWidth = 1
        highScoresButton.layer.borderColor = UIColor.clearColor().CGColor
        highScoresButton.backgroundColor = UIColor.yellowColor()
        highScoresButton.setTitleColor(UIColor.purpleColor(), forState: .Normal)
    
        soundButton?.setImage(UIImage(named: "soundOn.png"), forState: UIControlState.Normal)
        
        gameSound = self.setupAudioPlayerWithFile("gameSound", type:"mp3")
        gameSound?.numberOfLoops = -1
        gameSound?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer?  {
        
        let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        let url = NSURL.fileURLWithPath(path!)
        
        var audioPlayer:AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("Player not available")
        }
        
        return audioPlayer
    }

    @IBAction func soundButtonTapped(sender: AnyObject) {
        if isSoundOn == true {
            soundButton.setImage(UIImage(named: "soundOff.png"), forState: UIControlState.Normal)
            gameSound?.volume = 0
            isSoundOn = false;
        }
        else if isSoundOn == false {
            soundButton.setImage(UIImage(named: "soundOn.png"), forState: UIControlState.Normal)
            gameSound?.volume = 0.8
            isSoundOn = true
        }
    }

}

