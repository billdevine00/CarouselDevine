//
//  SettingsViewController.swift
//  CarouselDevine
//
//  Created by WilliamDevine on 9/21/14.
//  Copyright (c) 2014 WilliamDevine. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var settingScrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingScrollView.contentSize = settingsImage.frame.size
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackbutton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
