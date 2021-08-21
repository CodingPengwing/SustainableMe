//
//  ViewController.swift
//  BetterPlayground
//
//  Created by Jennifer Xiang on 19/8/21.
//

import UIKit

var coinCount = 998
var heartCount = 0

var BoxOneCheck = false
var BoxTwoCheck = false
var BoxThreeCheck = false


class ViewController: UIViewController {
    @IBOutlet weak var tree: UIImageView!
    @IBOutlet weak var snooze: UIImageView!
    
    @IBOutlet weak var coinLabel: UILabel!
    
    @IBOutlet weak var boxOne: UIButton!
    @IBOutlet weak var boxTwo: UIButton!
    @IBOutlet weak var boxThree: UIButton!
    
    
    // checks box one
    @IBAction func boxOneCheck(_ sender: Any) {
        if (BoxOneCheck == false){
            boxOne.setImage(UIImage(named: "checked.png"), for: .normal)
            if (coinCount < 1000){
                coinCount += 1
            }
            BoxOneCheck = true
        }
        else {
            boxOne.setImage(UIImage(named: "unchecked.png"), for: .normal)
            coinCount -= 1
            BoxOneCheck = false
        }
        coinLabel.text = " \(coinCount)"
    }
    
    // checks box two lmao
    @IBAction func boxTwoCheck(_ sender: Any) {
        if (BoxTwoCheck == false){
            boxTwo.setImage(UIImage(named: "checked.png"), for: .normal)
            if (coinCount < 1000){
                coinCount += 1
            }
            BoxTwoCheck = true
        }
        else {
            boxTwo.setImage(UIImage(named: "unchecked.png"), for: .normal)
            coinCount -= 1
            BoxTwoCheck = false
        }
        coinLabel.text = " \(coinCount)"
    }
    // checks box three lmao
    @IBAction func boxThreeCheck(_ sender: Any) {
        if (BoxThreeCheck == false){
            boxThree.setImage(UIImage(named: "checked.png"), for: .normal)
            if (coinCount < 1000){
                coinCount += 1
            }
            BoxThreeCheck = true
        }
        else {
            boxThree.setImage(UIImage(named: "unchecked.png"), for: .normal)
            coinCount -= 1
            BoxThreeCheck = false
        }
        coinLabel.text = " \(coinCount)"
    }
    
    // stuff the screen does right as the scene loads
    override func viewDidLoad() {
        super.viewDidLoad()
        coinLabel.text = " \(coinCount)"
        tree.loadGif(name:"Fish")
        snooze.loadGif(name:"snooze")
        if BoxOneCheck{
            boxOne.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if BoxTwoCheck{
            boxTwo.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if BoxThreeCheck{
            boxThree.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
}



