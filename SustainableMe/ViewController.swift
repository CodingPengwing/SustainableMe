//
//  ViewController.swift
//  BetterPlayground
//
//  Created by Jennifer Xiang on 19/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tree: UIImageView!
    @IBOutlet weak var coinLabel: UITextView!
    @IBOutlet weak var snooze: UIImageView!
    @IBOutlet weak var checkBox: UIButton!
    
    var coinCount = 0
    
    @IBAction func check(_ sender: UIButton) {
        if ((sender.currentBackgroundImage) == nil){
            coinCount += 1
            sender.setBackgroundImage(UIImage(named:"checked.png"), for: .normal)
        }
        else {
            coinCount -= 1
            sender.setBackgroundImage(nil, for: .normal)
        }
        coinLabel.text = " \(coinCount)/100"
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tree.loadGif(name:"Fish")
        snooze.loadGif(name:"snooze")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}



