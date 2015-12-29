//
//  MainViewController.swift
//  LoveToSpell
//
//  Created by Jeff Wilder on 12/28/15.
//  Copyright © 2015 Jeff Wilder. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
        if let destinationVC = segue.destinationViewController as? WriteViewController{
            destinationVC.exercise = String(segue.identifier)
        }
    }
}

