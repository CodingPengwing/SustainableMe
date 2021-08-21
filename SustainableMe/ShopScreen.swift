//
//  ShopScreen.swift
//  SustainableMe
//
//  Created by Cindy Lin on 21/8/21.
//

import UIKit
/*
 STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
 */
var itemCheckOne   = false
var itemCheckTwo   = false
var itemCheckThree = false
var itemCheckFour  = false
var itemCheckFive  = false
var itemCheckSix   = false
/*
 STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
 */
class ShopScreen: UIViewController{
    
    @IBOutlet weak var coinCountShop: UITextView!
    @IBOutlet weak var heartCountShop: UITextView!
    
    /*
     STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
     */
    @IBOutlet weak var heartLabel: UITextView!
    @IBOutlet weak var coinLabel: UITextView!
    @IBOutlet weak var giftButtonOne: UIButton!
    @IBOutlet weak var giftButtonTwo: UIButton!
    @IBOutlet weak var giftButtonThree: UIButton!
    @IBOutlet weak var giftButtonFour: UIButton!
    @IBOutlet weak var giftButtonFive: UIButton!
    @IBOutlet weak var giftButtonSix: UIButton!
    
    
    @IBAction func buyGiftOne(_ sender: UIButton) {
        if coinCount > 0 && heartCount < 100 && !itemCheckOne{
            itemCheckOne = true
            buyGift(1)
            giftButtonOne.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }
    
    @IBAction func buyGiftTwo(_ sender: Any) {
        if coinCount > 0 && heartCount < 100 && !itemCheckTwo{
            itemCheckTwo = true
            buyGift(1)
            giftButtonTwo.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }
    
    @IBAction func buyGiftThree(_ sender: Any) {
        if coinCount > 2 && heartCount < 98 && !itemCheckThree{
            itemCheckThree = true
            buyGift(3)
            giftButtonThree.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }
    
    @IBAction func buyGiftFour(_ sender: Any) {
        if coinCount > 2 && heartCount < 98 && !itemCheckFour{
            itemCheckFour = true
            buyGift(3)
            giftButtonFour.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }
    

    @IBAction func buyGiftFive(_ sender: Any) {
        if coinCount > 4 && heartCount < 96 && !itemCheckFive{
            itemCheckFive = true
            buyGift(5)
            giftButtonFive.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }
    
    
    @IBAction func buyGiftSix(_ sender: Any) {
        if coinCount > 4 && heartCount < 96 && !itemCheckSix{
            itemCheckSix = true
            buyGift(5)
            giftButtonFour.setImage(UIImage(named: "checked.png"), for: .normal)
        }
    }
    
    func buyGift(_ value: Int){
        coinCount -= value
        heartCount += value
        coinLabel.text = " \(coinCount)"
        heartLabel.text = " \(heartCount)/100"
        
    }
    
    /*
     STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coinCountShop.text = " \(coinCount)"
        /*
         STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
         */
        heartLabel.text = " \(heartCount)/100"
        
        if itemCheckOne{
            giftButtonOne.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if itemCheckTwo{
            giftButtonTwo.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if itemCheckThree{
            giftButtonThree.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if itemCheckFour{
            giftButtonFour.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if itemCheckFive{
            giftButtonFive.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        if itemCheckSix{
            giftButtonSix.setImage(UIImage(named: "checked.png"), for: .normal)
        }
        /*
         STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
         */
    }
    
}
