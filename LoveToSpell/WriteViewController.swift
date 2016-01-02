//
//  WriteViewController.swift
//  LoveToSpell
//
//  Created by Jeff Wilder on 12/29/15.
//  Copyright © 2015 Jeff Wilder. All rights reserved.
//

import UIKit
import AVFoundation

class WriteViewController: UIViewController {

    var exercise = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Exercise \(exercise)")
        let synth = AVSpeechSynthesizer()
        var myUtterance = AVSpeechUtterance(string: "dog")
        myUtterance.rate = 0.0
        synth.speakUtterance(myUtterance)
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
