//
//  WriteViewController.swift
//  LoveToSpell
//
//  Created by Jeff Wilder on 12/29/15.
//  Copyright © 2015 Jeff Wilder. All rights reserved.
//

import UIKit
import AVFoundation

extension UISegmentedControl {
    
    func setFontSize(fontSize: CGFloat) {
        
        let normalTextAttributes: [NSObject : AnyObject] = [
            NSForegroundColorAttributeName: UIColor.blackColor(),
            NSFontAttributeName: UIFont.systemFontOfSize(fontSize, weight: UIFontWeightRegular)
        ]
        
        let boldTextAttributes: [NSObject : AnyObject] = [
            NSForegroundColorAttributeName : UIColor.whiteColor(),
            NSFontAttributeName : UIFont.systemFontOfSize(fontSize, weight: UIFontWeightMedium),
        ]
        
        self.setTitleTextAttributes(normalTextAttributes, forState: .Normal)
        self.setTitleTextAttributes(normalTextAttributes, forState: .Highlighted)
        self.setTitleTextAttributes(boldTextAttributes, forState: .Selected)
    }
}

class WriteViewController: UIViewController {

    var exercise = ""
    var segmentedControl:UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        segmentedControl = UISegmentedControl (items: ["a", "e", "i", "o", "u", "Digraphs", "Blends", "Mega Mix"])
        segmentedControl.frame = CGRectMake(60, 250,600, 40)
        segmentedControl.center = CGPointMake(UIScreen.mainScreen().bounds.size.width/2, 50)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.apportionsSegmentWidthsByContent = true
        segmentedControl.addTarget(self, action: "segmentedControlAction:", forControlEvents: .ValueChanged)
        segmentedControl.setFontSize(20)
        self.view.addSubview(segmentedControl)

        print("Exercise \(exercise)")
        let synth = AVSpeechSynthesizer()
        let myUtterance = AVSpeechUtterance(string: "dog")
        myUtterance.rate = 0.1
        synth.speakUtterance(myUtterance)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func skipPhase(sender: AnyObject) {
        print("Skip Phase pressed")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func segmentedControlAction(sender: AnyObject) {
        if(segmentedControl.selectedSegmentIndex == 0)
        {
            print("First Segment Selected")
        }
        else if(segmentedControl.selectedSegmentIndex == 1)
        {
            print("Second Segment Selected")
        }
        else if(segmentedControl.selectedSegmentIndex == 2)
        {
            print("Third Segment Selected")
        }
    }
    
}
