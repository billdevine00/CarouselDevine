//
//  IntroViewController.swift
//  CarouselDevine
//
//  Created by WilliamDevine on 9/20/14.
//  Copyright (c) 2014 WilliamDevine. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    @IBOutlet weak var tile1View: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScrollView.contentSize = CGSizeMake(320, 1460)
        introScrollView.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        var offset = Float(scrollView.contentOffset.y)
      
        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -70, r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -295, r2Max: 0)
        var scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx1),CGFloat(ty1))
        tile1View.transform = CGAffineTransformScale(tile1View.transform, CGFloat(scale1), CGFloat(scale1))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 35, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -270, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -437, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 78, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -108, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -515, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -95, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
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
