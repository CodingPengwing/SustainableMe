//
//  AppDelegate.swift
//  BetterPlayground
//
//  Created by Jennifer Xiang on 20/8/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        coinCount = UserDefaults.standard.integer(forKey: "coinCount") as Int
        heartCount = UserDefaults.standard.integer(forKey: "heartCount") as Int
        
        // saves store state
        itemCheckOne = UserDefaults.standard.bool(forKey: "itemCheckOne") as Bool
        itemCheckTwo = UserDefaults.standard.bool(forKey: "itemCheckTwo") as Bool
        itemCheckThree = UserDefaults.standard.bool(forKey: "itemCheckThree") as Bool
        itemCheckFour = UserDefaults.standard.bool(forKey: "itemCheckFour") as Bool
        itemCheckFive = UserDefaults.standard.bool(forKey: "itemCheckFive") as Bool
        itemCheckSix = UserDefaults.standard.bool(forKey: "itemCheckSix") as Bool

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        UserDefaults.standard.set(coinCount, forKey: "coinCount")
        UserDefaults.standard.set(heartCount, forKey: "heartCount")
        
        //saves shop state
        UserDefaults.standard.set(itemCheckOne, forKey: "itemCheckOne")
        UserDefaults.standard.set(itemCheckTwo, forKey: "itemCheckTwo")
        UserDefaults.standard.set(itemCheckThree, forKey: "itemCheckThree")
        UserDefaults.standard.set(itemCheckFour, forKey: "itemCheckFour")
        UserDefaults.standard.set(itemCheckFive, forKey: "itemCheckFive")
        UserDefaults.standard.set(itemCheckSix, forKey: "itemCheckSix")
    }

}
