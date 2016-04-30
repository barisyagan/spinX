//
//  StartViewController.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit
import AVFoundation

class StartViewController: UIViewController, UIGestureRecognizerDelegate {
   
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var upLineView: UIView!
    @IBOutlet weak var rightLineView: UIView!
    @IBOutlet weak var downLineView: UIView!
    @IBOutlet weak var leftLineView: UIView!
    @IBOutlet weak var wheelView: UIImageView!
    
    var count: Int = 0
    var score: Int = 300
    var level: Int = 1
    var winSound: AVAudioPlayer?
    var transformRotationAngle: CGFloat = 0.0523599
    let alertNextLevel = UIAlertController(title: "Good !", message: "Wanna play the next level ?", preferredStyle: UIAlertControllerStyle.Alert)
    let alertGameOver = UIAlertController(title: "Bad !", message: "Try Again", preferredStyle: UIAlertControllerStyle.Alert)


    @IBAction func handleContinuousTap(sender: AnyObject) {
     
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.wheelView.transform = CGAffineTransformRotate(self.wheelView.transform, self.transformRotationAngle)
            self.count++
            if sender.state == UIGestureRecognizerState.Ended {
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
                    if (self.level == 1) {
                        if self.count % 30 == 0 && self.count > 29 {
                            self.winSound?.play()
                            self.wheelView.image = UIImage(named: "wheel2Win.png")
                            self.upLineView.backgroundColor = UIColor.yellowColor()
                            self.rightLineView.backgroundColor = UIColor.yellowColor()
                            self.downLineView.backgroundColor = UIColor.yellowColor()
                            self.leftLineView.backgroundColor = UIColor.yellowColor()
                            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
                                self.presentViewController(self.alertNextLevel, animated: true, completion: nil)
                            })
                        }
                        else {
                            self.score = self.score - 50
                            self.scoreLabel.text = "Score: \(self.score)"
                            if self.score == 0 {
                                self.presentViewController(self.alertGameOver, animated: true, completion: nil)
                            }
                        }
                    } else if (self.level == 2) {
                            if self.count % 15 == 0 && self.count > 14 {
                                self.winSound?.play()
                                self.wheelView.image = UIImage(named: "wheel3Win.png")
                                self.upLineView.backgroundColor = UIColor.yellowColor()
                                self.rightLineView.backgroundColor = UIColor.yellowColor()
                                self.downLineView.backgroundColor = UIColor.yellowColor()
                                self.leftLineView.backgroundColor = UIColor.yellowColor()
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
                                    self.presentViewController(self.alertNextLevel, animated: true, completion: nil)
                                })
                            }
                            else {
                                self.score = self.score - 50
                                self.scoreLabel.text = "Score: \(self.score)"
                                if self.score == 0 {
                                    self.presentViewController(self.alertGameOver, animated: true, completion: nil)
                                }
                            }

                    } else if (self.level > 2) {
                        if self.count % 30 == 0 && self.count > 29 {
                            self.winSound?.play()
                            self.wheelView.image = UIImage(named: "wheel3Win.png")
                            self.upLineView.backgroundColor = UIColor.yellowColor()
                            self.rightLineView.backgroundColor = UIColor.yellowColor()
                            self.downLineView.backgroundColor = UIColor.yellowColor()
                            self.leftLineView.backgroundColor = UIColor.yellowColor()
                            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
                                self.presentViewController(self.alertNextLevel, animated: true, completion: nil)
                            })
                        }
                        else {
                            self.score = self.score - 50
                            self.scoreLabel.text = "Score: \(self.score)"
                            if self.score == 0 {
                                self.presentViewController(self.alertGameOver, animated: true, completion: nil)
                            }
                        }
                    }
                })
            
            }
            }) { (Bool) -> Void in
                
        }
        
 
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scoreLabel.text = "Score: \(self.score)"
        self.levelLabel.text = "Level: \(self.level)"
        alertNextLevel.addAction(UIAlertAction(title: "Next Level", style: UIAlertActionStyle.Default, handler: { action in
            self.wheelView.image = UIImage(named: "wheel3")
            self.upLineView.backgroundColor = UIColor.blackColor()
            self.rightLineView.backgroundColor = UIColor.blackColor()
            self.downLineView.backgroundColor = UIColor.blackColor()
            self.leftLineView.backgroundColor = UIColor.blackColor()
            self.level++
            self.levelLabel.text = "Level: \(self.level)"
            if (self.level > 2) {
                self.transformRotationAngle = self.transformRotationAngle + 0.001
            }
        }))
        alertNextLevel.addAction(UIAlertAction(title: "Main Menu", style: UIAlertActionStyle.Cancel, handler: { action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }))
        alertGameOver.addAction(UIAlertAction(title: "Start", style: UIAlertActionStyle.Default, handler: { action in
            self.wheelView.image = UIImage(named: "wheel2")
            self.level = 1
            self.score = 300
            self.scoreLabel.text = "Score: \(self.score)"
            self.levelLabel.text = "Level: \(self.level)"
            self.upLineView.backgroundColor = UIColor.blackColor()
            self.rightLineView.backgroundColor = UIColor.blackColor()
            self.downLineView.backgroundColor = UIColor.blackColor()
            self.leftLineView.backgroundColor = UIColor.blackColor()
        }))
        alertGameOver.addAction(UIAlertAction(title: "Main Menu", style: UIAlertActionStyle.Cancel, handler: { action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }))
        winSound = self.setupAudioPlayerWithFile("winSound", type:"mp3")
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
    
    
    @IBAction func exitButtonHandled(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
