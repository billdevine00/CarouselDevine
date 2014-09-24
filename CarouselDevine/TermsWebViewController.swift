//
//  TermsWebViewController.swift
//  CarouselDevine
//
//  Created by WilliamDevine on 9/21/14.
//  Copyright (c) 2014 WilliamDevine. All rights reserved.
//

import UIKit
import WebKit

class TermsWebViewController: UIViewController {
    
    @IBOutlet weak var termsWebView: UIWebView!

    let url = "https://www.dropbox.com/terms?mobile=1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL)
        termsWebView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClose(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
