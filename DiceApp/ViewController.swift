//
//  ViewController.swift
//  DiceApp
//
//  Created by Usha Sai Chintha on 03/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightSideDiceImageView: UIImageView!
    @IBOutlet weak var leftSideDiceImageView: UIImageView!
    
    /*
     var rightDiceNumber = 5
     var leftDiceNumber = 2
    //Whenever roll button is tapped, the code in below block gets triggered
    //First time click : left dice value is 3 (as left dice number is 2 which is index, actual value in array is 3rd image). Now after the display of value, left dice number value is increased to 3
    //Second time click : left dice value is 4 and left dice number value is increased to 4 and so on...
    //So we get different values after each click till dice value reaches 6 then its crashes as the array is of size 6
    @IBAction func rollButtonClicked(_ sender: Any) {
        rightSideDiceImageView.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] [rightDiceNumber]
        leftSideDiceImageView.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] [leftDiceNumber]
        leftDiceNumber+=1
        rightDiceNumber-=1
    }
    */
    
    //randomising the values displayed on dices so that app desnt crash
    @IBAction func rollButtonClicked(_ sender: Any) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //Int --> a data type which means a integer. Its refers to whole numbers i.e number without decimals
        //random function helps in choosing a random variable in certain range
        //... --> refers to range of values including 0 and 5
        rightSideDiceImageView.image = diceArray[Int.random(in: 0...5)]
        leftSideDiceImageView.image = diceArray[Int.random(in: 0...5)]
        
        /*
        // Or another easy way of getting a random element from array is :
        //rightSideDiceImageView.image = diceArray.randomElement()
        //leftSideDiceImageView.image = diceArray.randomElement()
        */
        
    }
}

