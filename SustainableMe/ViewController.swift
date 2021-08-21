//
//  ViewController.swift
//  BetterPlayground
//
//  Created by Jennifer Xiang on 19/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tree: UIImageView!
    @IBOutlet weak var coins: UITextView!
    @IBOutlet weak var snooze: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tree.loadGif(name:"Fish")
        snooze.loadGif(name:"snooze")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
}



