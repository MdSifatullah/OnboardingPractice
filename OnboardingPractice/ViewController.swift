//
//  ViewController.swift
//  OnboardingPractice
//
//  Created by Md Sifat on 1/7/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewDidAppear(true)
    }
    override func viewDidAppear(_ animated: Bool) {
        let storyBoard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let walkTharoughViewController = storyBoard.instantiateViewController(identifier: "WalkThroughViewController") as? WalkThroughViewController {
            present(walkTharoughViewController, animated: true, completion: nil)
        }
    }

}

