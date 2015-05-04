//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
               // Do any additional setup after loading the view.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var text:NSArray = split( textView.text! ) { $0 == " "}
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
        var fullPath = documentsPath.stringByAppendingPathComponent("five.txt")
        text.writeToFile(fullPath, atomically: true)

    }
}
