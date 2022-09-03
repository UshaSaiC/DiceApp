//
//  ViewController.swift
//  DiceApp
//
//  Created by Usha Sai Chintha on 03/09/22.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet is used to refer to an UI element
    //Below variables are automatically created by establishing a connection i.e clicking on control button, selecting desired UI element from Main.storyboard and draging the reference outlets from the element and dropping it in this file
    @IBOutlet weak var rightSideDiceImageView: UIImageView!
    @IBOutlet weak var leftSideDiceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //changing the properties of UI elements during run time
        // for below values used #imageLiteral( the an enter button to insert images in code file
        //object.property = value
        rightSideDiceImageView.image = #imageLiteral(resourceName: "DiceSix")
        leftSideDiceImageView.image = #imageLiteral(resourceName: "DiceTwo")
    }


    //IBAction is triggered when a particular action happens on UI element
    @IBAction func rollButtonClicked(_ sender: Any) {
        print("Button is tapped)")
        rightSideDiceImageView.image = #imageLiteral(resourceName: "DiceFour")
        leftSideDiceImageView.image = #imageLiteral(resourceName: "DiceFour")
    }
}

