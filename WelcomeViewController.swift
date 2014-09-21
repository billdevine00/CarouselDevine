//
//  WelcomeViewController.swift
//  CarouselDevine
//
//  Created by WilliamDevine on 9/21/14.
//  Copyright (c) 2014 WilliamDevine. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var welcomePageControl: UIPageControl!

    @IBOutlet weak var takeSpinButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        takeSpinButton.alpha = 0
        welcomeScrollView.contentSize = CGSizeMake(1280, 568)
        welcomeScrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page = Int(welcomeScrollView.contentOffset.x / 320)        
        // Set the current page, so the dots will update
        welcomePageControl.currentPage = page
        
            if (welcomeScrollView.contentOffset.x == 960) {
                
                UIView.animateWithDuration(0.8) {
                    self.takeSpinButton.alpha = 1
                }
}

}
}