//
//  ShowerTimer.swift
//  SustainableMe
//
//  Created by Cindy Lin on 21/8/21.
//

import UIKit

class ShowerTimer: UIViewController{
    
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var showerGif: UIImageView!
    @IBOutlet weak var waterUsageCounter: UILabel!
    
    var timer:Timer = Timer()
    var count:Int = 0
    var timerCounting:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startStopButton.setTitleColor(UIColor.white, for: .normal)
//        showerGif.loadGif(name: "Shower")
 
    }
    
//    func bruhmoment(){
//        showerGif.loadGif(name: "Shower")
//    }
    

    // start button
    @IBAction func startStopTapped(_ sender: Any) {
        
        
        if (timerCounting){
            showerGif.image = UIImage(named: "shower")
            timerCounting = false
            timer.invalidate()
            startStopButton.setTitle("START SHOWER", for: .normal)
            startStopButton.setTitleColor(UIColor.white, for: .normal)
        }
        
        
        else{
            showerGif.loadGif(name: "Shower")
            timerCounting = true
            startStopButton.setTitle("FINISH SHOWER", for: .normal)
            startStopButton.setTitleColor(UIColor.white, for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }
        
    }
    
    // reset button
    @IBAction func resetTapped(_ sender: Any) {
        showerGif.image = UIImage(named: "shower")
        self.count = 0
        self.timer.invalidate()
        self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
        waterUsageCounter.text = String(150*count)+"mL"
        timerCounting = false
        startStopButton.setTitle("START SHOWER", for: .normal)
        startStopButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    // displays time and water used
    @objc func timerCounter()-> Void{
        count += 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        TimerLabel.text = timeString

        waterUsageCounter.text = String(150*count)+"mL"
        
    }
    
    // converts to hour mins and secs
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int)
        {
            return ((seconds / 3600), ((seconds % 3600) / 60),((seconds % 3600) % 60))
        }
        
    func makeTimeString(hours: Int, minutes: Int, seconds : Int) -> String
        {
            var timeString = ""
            timeString += String(format: "%02d", hours)
            timeString += " : "
            timeString += String(format: "%02d", minutes)
            timeString += " : "
            timeString += String(format: "%02d", seconds)
            return timeString
        }
    
    
   
}
