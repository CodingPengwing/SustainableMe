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

var tasks = ["Eat less meat", "Take quick showers", "Turn off the lights when you leave the room", "ABC", "Turn off the lights when you leave the room", "SKJDF", "Turn off the lights when you leave the room"]

var descriptions = ["In 2014, the Food and Agriculture Organization of the United Nations noted that livestock in general make up 14.5% of all human-induced emissions. Reducing the impact of this livestock by reducing the need for it and improving farming practices can help lower this impact.", "Even water saving shower heads use ~9 L/minute", "Leaving your lights on can use a siginficant amount of electricity (unless you have LED lights) in addition to decreasing the lifespan of lights"]



class ViewController: UIViewController {
    @IBOutlet weak var tree: UIImageView!
    @IBOutlet weak var snooze: UIImageView!
    
    @IBOutlet weak var coinLabel: UILabel!
    
    @IBOutlet weak var boxOne: UIButton!
    @IBOutlet weak var boxTwo: UIButton!
    @IBOutlet weak var boxThree: UIButton!
    
    @IBOutlet var taskLabel1: UILabel!
    @IBOutlet var taskLabel2: UILabel!
    @IBOutlet var taskLabel3: UILabel!
    
    static var displayWelcome: Bool = true
    static var continueDisplay: Bool = false
    
    
    // checks box one
    @IBAction func boxOneCheck(_ sender: Any) {
        if (BoxOneCheck == false){
            boxOne.setBackgroundImage(UIImage(systemName: "square.fill"), for: .normal)
            if (coinCount < 1000){
                coinCount += 1
            }
            BoxOneCheck = true
        }
        else {
            boxOne.setBackgroundImage(UIImage(systemName: "square"), for: .normal)
            coinCount -= 1
            BoxOneCheck = false
        }
        coinLabel.text = " \(coinCount)"
    }
    
    // checks box two lmao
    @IBAction func boxTwoCheck(_ sender: Any) {
        if (BoxTwoCheck == false){
            boxTwo.setBackgroundImage(UIImage(systemName: "square.fill"), for: .normal)
            if (coinCount < 1000){
                coinCount += 1
            }
            BoxTwoCheck = true
        }
        else {
            boxTwo.setBackgroundImage(UIImage(systemName: "square"), for: .normal)
            coinCount -= 1
            BoxTwoCheck = false
        }
        coinLabel.text = " \(coinCount)"
    }
    // checks box three lmao
    @IBAction func boxThreeCheck(_ sender: Any) {
        if (BoxThreeCheck == false){
            boxThree.setBackgroundImage(UIImage(systemName: "square.fill"), for: .normal)
            if (coinCount < 1000){
                coinCount += 1
            }
            BoxThreeCheck = true
        }
        else {
            boxThree.setBackgroundImage(UIImage(systemName: "square"), for: .normal)
            coinCount -= 1
            BoxThreeCheck = false
        }
        coinLabel.text = " \(coinCount)"
    }
    
    // stuff the screen does right as the scene loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNum = Int.random(in: 0...(tasks.count - 1))
        taskLabel1.text = tasks[randomNum]
        taskLabel2.text = tasks[(randomNum+1) % tasks.count]
        taskLabel3.text = tasks[(randomNum+2) % tasks.count]
        
        coinLabel.text = " \(coinCount)"
        if BoxOneCheck{
            boxOne.setBackgroundImage(UIImage(systemName: "square.fill"), for: .normal)
        }
        if BoxTwoCheck{
            boxTwo.setBackgroundImage(UIImage(systemName: "square.fill"), for: .normal)
        }
        if BoxThreeCheck{
            boxThree.setBackgroundImage(UIImage(systemName: "square.fill"), for: .normal)
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



