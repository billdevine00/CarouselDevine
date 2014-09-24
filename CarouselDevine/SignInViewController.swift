//
//  SignInViewController.swift
//  CarouselDevine
//
//  Created by WilliamDevine on 9/20/14.
//  Copyright (c) 2014 WilliamDevine. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var createTextImage: UIImageView!
    @IBOutlet weak var fieldsView: UIView!
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    

    func keyboardWillShow(notification: NSNotification!) {
        println("keyboardwillshow")
        
        var userInfo = notification.userInfo!
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!,animations: {
            self.fieldsView.frame.origin.y = self.view.frame.size.height - kbSize.height - self.fieldsView.frame.size.height}, completion: nil)
        
        
    }
    
    
    func keyboardWillHide(notification: NSNotification!) {
        println("bye")
        var userInfo = notification.userInfo!
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!,animations: {
            self.fieldsView.frame.origin.y = 134}, completion: nil)
        
    }

    
    @IBAction func onSignInButton(sender: AnyObject) {
        
        signInButton.selected = false
        
        if (self.emailTextField.text == "") || (self.passwordTextField == "") {
            var alertView = UIAlertView(title: "Email and password required", message: "Please enter email and password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
        } else {
            var signInAlertView = UIAlertView(title: "Signing In", message: "", delegate: self, cancelButtonTitle: nil)
            signInAlertView.show()
            
            delay(1.5, closure: { () -> () in signInAlertView.dismissWithClickedButtonIndex(0, animated: true)
                
                
        if (self.emailTextField.text == "bill@gmail.com") && (self.passwordTextField.text == "123") {
                    self.performSegueWithIdentifier("signInViewSegue", sender: self)
        } else {
            var alertView = UIAlertView(title: "Sign in failed", message: "Wrong email or password", delegate: self, cancelButtonTitle: "OK")
                    alertView.show()
                
            }
        })
    }
}

        override func viewDidLoad() {
        super.viewDidLoad()

            NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButton(sender: AnyObject) {
    navigationController?.popToRootViewControllerAnimated(true)
    
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
