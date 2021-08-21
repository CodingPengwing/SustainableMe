//
//  DescriptionView.swift
//  SustainableMe
//
//  Created by Tony Dang on 21/8/21.
//

import UIKit

class DescriptionView: UIViewController {
    // get the descriptions for the tasks
    @IBOutlet var description1: UILabel?
    @IBOutlet var description2: UILabel?
    @IBOutlet var description3: UILabel?
    
    override func viewDidLoad() {
        description1?.text = descriptions[randomNum]
        description2?.text = descriptions[(randomNum+1) % descriptions.count]
        description3?.text = descriptions[(randomNum+2) % descriptions.count]
    }
    
       
}
