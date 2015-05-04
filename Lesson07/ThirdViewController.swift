//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let text = textView.text!
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
        var fullPath = documentsPath.stringByAppendingPathComponent("three.txt")
      let success = text.writeToFile(fullPath, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
    }
}
