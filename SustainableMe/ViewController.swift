//
//  ViewController.swift
//  SustainableMe
//
//  Created by Jennifer Xiang on 21/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pet.loadGif(name: "He")
    }


}

