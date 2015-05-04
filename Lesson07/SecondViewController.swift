//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var settings: NSDictionary?
    override func viewDidLoad() {
        super.viewDidLoad()
        let stringValue = NSUserDefaults.standardUserDefaults().stringForKey("settings_name")
        let sliderValue = NSUserDefaults.standardUserDefaults().stringForKey("settings_slider")
        textView.text = "\(stringValue) \(sliderValue)"
    }
}
