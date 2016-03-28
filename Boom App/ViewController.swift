//
//  ViewController.swift
//  Boom App
//
//  Created by David Marwil on 1/21/16.
//  Copyright © 2016 David Marwil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var uncoolButton: UIButton!
    @IBOutlet weak var chakraGirl: UIImageView!
    @IBOutlet weak var hideChakraGirlButton: UIButton!
    
    var imageSwitcher = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func superCoolTheApp(sender: AnyObject) {
        backgroundImage.hidden = false
        uncoolButton.hidden = true
    }
    @IBAction func hideOrShowChakraGirl(sender: AnyObject) {
        if imageSwitcher == 0 {
            chakraGirl.hidden = true
            hideChakraGirlButton.titleLabel!.text = "Show Chakra Girl"
            imageSwitcher = 1;
        }
        else if imageSwitcher == 1 {
            chakraGirl.hidden = false
            hideChakraGirlButton.titleLabel!.text = "Hide Chakra Girl"
            imageSwitcher = 0
        }
    }

}

