//
//  WalkThroughContentViewController.swift
//  OnboardingPractice
//
//  Created by Md Sifat on 1/7/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class WalkThroughContentViewController: UIViewController {
    
    @IBOutlet var headingLabel: UILabel!{
        didSet{
            headingLabel.numberOfLines = 0
        }
    }
    @IBOutlet var subHeadingLabel: UILabel!{
        didSet{
            subHeadingLabel.numberOfLines = 0
        }
    }
    @IBOutlet var contentImageView: UIImageView!
    
    var index = 0
    var heading = ""
    var subHeading = ""
    var imageFile = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        headingLabel.text = heading
        subHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
    }
    
    
}
