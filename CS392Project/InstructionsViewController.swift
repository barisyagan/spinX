//
//  InstructionsViewController.swift
//  CS392Project
//
//  Created by Baris Yagan on 12/26/15.
//  Copyright © 2015 Baris Yagan. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    var imageView = UIImageView(frame: CGRectMake(35, 30, 200, 200))
    let alertShowPan = UIAlertController(title: "How To Spin The Wheel", message: "\n\n\n\n\n\n\n\n\n", preferredStyle: UIAlertControllerStyle.Alert)
    
    @IBOutlet weak var howToPanButton: UIButton!
    
    @IBAction func howToPanButtonTapped(sender: AnyObject) {
        self.presentViewController(self.alertShowPan, animated: true, completion: nil)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Instructions"
        imageView.image = UIImage(named: "pan")
        alertShowPan.view.addSubview(imageView)
        alertShowPan.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { action in }))
        

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
