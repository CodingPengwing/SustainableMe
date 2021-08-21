//
//  ShopScreen.swift
//  SustainableMe
//
//  Created by Cindy Lin on 21/8/21.
//

import UIKit

class ShopScreen: UIViewController{
    
    @IBOutlet weak var coinCountShop: UITextView!
    @IBOutlet weak var heartCountShop: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coinCountShop.text = " \(coinCount)"
    }
    
}
