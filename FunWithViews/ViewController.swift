//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOfRolls: Int = -1
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var OrangeLabel: UILabel!
    @IBOutlet weak var YellowLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var MagentaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Default view is all items hidden
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        
        RedLabel.isHidden = true
        OrangeLabel.isHidden = true
        GreenLabel.isHidden = true
        BlueLabel.isHidden = true
        MagentaLabel.isHidden = true
        YellowLabel.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
      numberOfRolls += 1
      numberOfRolls = numberOfRolls % 6
 //     print(numberOfRolls)
      let rollNumber: Int = randomDiceRoll()
      displayDice(rollNumber)
      addDiceRoll(rollNumber, numberOfRolls)
 //     print(rollNumber)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func addDiceRoll(_ diceRoll: Int,_ numberOfRolls: Int){
        switch numberOfRolls {
        case 0:
            RedLabel.text = String(diceRoll)
            RedLabel.isHidden = false
        case 1:
            OrangeLabel.text = String(diceRoll)
            OrangeLabel.isHidden = false
        case 2:
            YellowLabel.text = String(diceRoll)
            YellowLabel.isHidden = false
        case 3:
            GreenLabel.text = String(diceRoll)
            GreenLabel.isHidden = false
        case 4:
            BlueLabel.text = String(diceRoll)
            BlueLabel.isHidden = false
        case 5:
            MagentaLabel.text = String(diceRoll)
            MagentaLabel.isHidden = false
        default:
            RedLabel.text = String(diceRoll)
            RedLabel.isHidden = false
        }
        
    }
    
    func displayDice(_ diceRoll: Int){
        switch diceRoll {
        case 1:
            //do something
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        case 2:
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = true
        case 3:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
        case 4:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
        case 5:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        }
    }

}
