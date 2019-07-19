//
//  ViewController.swift
//  iOSFrameBoundsPlayer
//
//  Created by WU CHIH WEI on 2019/7/20.
//  Copyright © 2019 WU CHIH WEI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var xSlider: UISlider!
    @IBOutlet weak var ySlider: UISlider!
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var viewSeletor: UISegmentedControl!
    @IBOutlet weak var frameBoundsSeletor: UISegmentedControl!
    
    @IBOutlet weak var ntuSuperView: UIView!
    @IBOutlet weak var ntuChildView: UIView!
    
    var targetView: UIView {
        
        get {
            
            if viewSeletor.selectedSegmentIndex == 0 {
                
                return ntuSuperView
            } else {
                
                return ntuChildView
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        syncSliderValueWithTargetView()
    }
    
    @IBAction func syncSliderValueWithTargetView() {
        
        if frameBoundsSeletor.selectedSegmentIndex == 0 {
            
            xSlider.value = Float(targetView.frame.origin.x)
            
            ySlider.value = Float(targetView.frame.origin.y)
            
            widthSlider.value = Float(targetView.frame.size.width)
            
            heightSlider.value = Float(targetView.frame.size.height)
            
        } else {
            
            xSlider.value = Float(targetView.bounds.origin.x)
            
            ySlider.value = Float(targetView.bounds.origin.y)
            
            widthSlider.value = Float(targetView.bounds.size.width)
            
            heightSlider.value = Float(targetView.bounds.size.height)
        }
    }
    
    //MARK: - Change X Value
    
    @IBAction func xValueDidChange(_ sender: UISlider) {
        
        if frameBoundsSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.origin.x = CGFloat(sender.value)
            
        } else {
            
            targetView.bounds.origin.x = CGFloat(sender.value)
        }
    }
    
    //MARK: - Change Y Value
    
    @IBAction func yValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.origin.y = CGFloat(sender.value)
            
        } else {
            
            targetView.bounds.origin.x = CGFloat(sender.value)
        }
    }
    
    //MARK: - Change Width Value
    
    @IBAction func widthValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.size.width = CGFloat(sender.value)
            
        } else {
            
            targetView.bounds.size.width = CGFloat(sender.value)
        }
    }
    
    //MARK: - Change Height Value
    
    @IBAction func heightValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.size.height = CGFloat(sender.value)
            
        } else {
            
            targetView.bounds.size.height = CGFloat(sender.value)
        }
    }
}

