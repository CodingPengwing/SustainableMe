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
    
    @IBOutlet var coinLabelShop: UILabel!
    @IBOutlet var heartLabelShop: UILabel!
    /*
     STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
     */

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
            giftButtonOne.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
    }
    
    @IBAction func buyGiftTwo(_ sender: Any) {
        if coinCount > 0 && heartCount < 100 && !itemCheckTwo{
            itemCheckTwo = true
            buyGift(1)
            giftButtonTwo.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
    }
    
    @IBAction func buyGiftThree(_ sender: Any) {
        if coinCount > 2 && heartCount < 98 && !itemCheckThree{
            itemCheckThree = true
            buyGift(3)
            giftButtonThree.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
    }
    
    @IBAction func buyGiftFour(_ sender: Any) {
        if coinCount > 2 && heartCount < 98 && !itemCheckFour{
            itemCheckFour = true
            buyGift(3)
            giftButtonFour.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
    }
    

    @IBAction func buyGiftFive(_ sender: Any) {
        if coinCount > 4 && heartCount < 96 && !itemCheckFive{
            itemCheckFive = true
            buyGift(5)
            giftButtonFive.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
    }
    
    
    @IBAction func buyGiftSix(_ sender: Any) {
        if coinCount > 4 && heartCount < 96 && !itemCheckSix{
            itemCheckSix = true
            buyGift(5)
            giftButtonSix.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
    }
    
    func buyGift(_ value: Int){
        coinCount -= value
        heartCount += value
        coinLabelShop.text = " \(coinCount)"
        heartLabelShop.text = " \(heartCount)%"
        
    }
    
    /*
     STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coinLabelShop.text = " \(coinCount)"
        /*
         STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
         */
        heartLabelShop.text = " \(heartCount)%"
        
        if itemCheckOne{
            giftButtonOne.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
        if itemCheckTwo{
            giftButtonTwo.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
        if itemCheckThree{
            giftButtonThree.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
        if itemCheckFour{
            giftButtonFour.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
        if itemCheckFive{
            giftButtonFive.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
        if itemCheckSix{
            giftButtonSix.setImage(UIImage(named: "soldout.png"), for: .normal)
        }
        /*
         STEPHENSTEPHENSTEPHENSTEPHENSTEPHEN
         */
    }
    
}
