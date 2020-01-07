//
//  WalkThroughViewController.swift
//  OnboardingPractice
//
//  Created by Md Sifat on 1/7/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class WalkThroughViewController: UIViewController {

    @IBOutlet var pageControll: UIPageControl!
    @IBOutlet var nextButton: UIButton!{
        didSet{
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }
     @IBOutlet var skipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
