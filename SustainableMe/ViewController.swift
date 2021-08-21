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
    
    static var displayWelcome: Bool = true
    static var continueDisplay: Bool = false
    
    
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
        if BoxOneCheck{
            boxOne.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if BoxTwoCheck{
            boxTwo.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if BoxThreeCheck{
            boxThree.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        
        if ViewController.continueDisplay{
            tree.loadGif(name:WelcomeViewController.petName)
        }
        
       
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //images and gifs
        if !ViewController.displayWelcome{
            tree.loadGif(name:WelcomeViewController.petName)
            ViewController.continueDisplay = true
        }
        snooze.loadGif(name:"snooze")
        
        if ViewController.displayWelcome{
            ViewController.displayWelcome = false
            let storyboard = UIStoryboard(name: "Welcome", bundle: nil)
            if let welcomeViewController = storyboard.instantiateViewController(identifier: "welcome") as? WelcomeViewController {
                welcomeViewController.modalPresentationStyle = .fullScreen
                present(welcomeViewController, animated: true, completion: nil)
            }
        }
    }
    
    
}



