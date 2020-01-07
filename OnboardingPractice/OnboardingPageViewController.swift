//
//  OnboardingPageViewController.swift
//  OnboardingPractice
//
//  Created by Md Sifat on 1/7/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class OnboardingPageViewController: UIPageViewController, UIPageViewControllerDataSource{
    
    var pageHeading = ["CREATE YOUR OWN DREAM CAFE ", "SET YOUR LOCATION", "FIND GREATE CAFE"]
    var pageImage = ["onboarding-1", "onboarding-2", "onboarding-3"]
    var pageSubHeadding = ["Pin your favourite cafe and create your own guide", "Search and locate your favourite cafe on maps", "FInd Cafe shared by your friends"]
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
  
        self.dataSource = self
        if let startingViewController = contentViewCOntroller(at: 0){
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkThroughContentViewController).index
        index -= 1
        return contentViewCOntroller(at: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkThroughContentViewController).index
        index += 1
        return contentViewCOntroller(at: index)
    }
    
    func contentViewCOntroller(at index : Int) -> WalkThroughContentViewController? {
        if index < 0 || index >= pageHeading.count {
            return nil
        }
        
        let storyBoard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let pageContentVieewController = storyBoard.instantiateViewController(identifier: "WalkThroughContentViewController") as? WalkThroughContentViewController {
            pageContentVieewController.imageFile = pageImage[index]
            pageContentVieewController.heading = pageHeading[index]
            pageContentVieewController.subHeading = pageSubHeadding[index]
            pageContentVieewController.index = index
            return pageContentVieewController
        }
        return nil
        
    }
    
}
