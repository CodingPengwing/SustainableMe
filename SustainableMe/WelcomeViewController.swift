//
//  WelcomeViewController.swift
//  SustainableMe
//
//  Created by Jennifer Xiang on 21/8/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var nextButtonA: UIButton!
    @IBOutlet weak var nextButtonB: UIButton!
    @IBOutlet weak var endButton: UIButton!
    static var petName: String = "Tree"
    
    @IBAction func NextButtonATapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
        
    }
    
    @IBAction func nextButtonBTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ThirdViewSegue", sender: self)
        
    }
    
    @IBAction func endButtonTapped(_ sender: UIButton) {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var fishStar: UIImageView!
    @IBOutlet weak var treeStar: UIImageView!
    @IBOutlet weak var heStar: UIImageView!
    
    @IBAction func fishSelect(_ sender: UIButton) {
        fishStar.image = UIImage(named:"star")
        treeStar.image = UIImage(named:"transparent")
        heStar.image = UIImage(named:"transparent")
        WelcomeViewController.petName = "Fish"
    }
    
    @IBAction func treeSelect(_ sender: UIButton) {
        treeStar.image = UIImage(named:"star")
        fishStar.image = UIImage(named:"transparent")
        heStar.image = UIImage(named:"transparent")
        WelcomeViewController.petName = "Tree"
    }
    
    @IBAction func heSelect(_ sender: UIButton) {
        heStar.image = UIImage(named:"star")
        fishStar.image = UIImage(named:"transparent")
        treeStar.image = UIImage(named:"transparent")
        WelcomeViewController.petName = "He"
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure()
    }

    
    
    
    private func configure(){
        super.viewDidLoad()
//        let scrollView = UIScrollView(frame: holderView.bounds)
//        holderView.addSubview(scrollView)
//
//        let titles = ["a","b","c"]
//        for x in 0..<3 {
//            let pageView = UIView(frame:CGRect(x: CGFloat(x) * holderView.frame.size.width , y:0, width: holderView.frame.size.width, height:holderView.frame.size.height))
//            scrollView.addSubview(pageView)
//            let label = UILabel(frame: CGRect(x:10, y:10, width:pageView.frame.size.width-20, height:120))
//            let imageView = UIImage(frame: CGRect(x:10, y:10+120+10, width:pageView.frame.size.width-20, height:pageView.frame.size.height-60-130-15))
//            let button = UIButton(frame: CGRect(x:10, y: pageView.frame.size.height-60,  width:pageView.frame.size.width-20, height:50))
//
//            label.textAlignment = .center
//            pageView.addSubview(label)
//            label.text = titles[x]
//
//            imageView.contentMode = .scaleAspectFit
//            imageView.image = UIImage(named: "palmtree")
//            pageView.addSubview(imageView)
//
//            button.addTarget(self, action:, fr)
//
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

