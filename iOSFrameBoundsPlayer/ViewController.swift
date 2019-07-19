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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    //MARK: - Change X Value
    
    @IBAction func xValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            changeXValue(ntuSuperView, to: CGFloat(sender.value))
            
        } else {
            
            changeXValue(ntuChildView, to: CGFloat(sender.value))
        }
    }
    
    func changeXValue(_ targetView: UIView, to value: CGFloat) {
        
        if frameBoundsSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.origin.x = value
            
        } else {
            
            targetView.bounds.origin.x = value
        }
    }
    
    //MARK: - Change Y Value
    
    @IBAction func yValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            changeYValue(ntuSuperView, to: CGFloat(sender.value))
            
        } else {
            
            changeYValue(ntuChildView, to: CGFloat(sender.value))
        }
    }
    
    func changeYValue(_ targetView: UIView, to value: CGFloat) {
        
        if frameBoundsSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.origin.y = value
            
        } else {
            
            targetView.bounds.origin.y = value
        }
    }
    
    //MARK: - Change Width Value
    
    @IBAction func widthValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            changeWidthValue(ntuSuperView, to: CGFloat(sender.value))
            
        } else {
            
            changeWidthValue(ntuChildView, to: CGFloat(sender.value))
        }
    }
    
    func changeWidthValue(_ targetView: UIView, to value: CGFloat) {
        
        if frameBoundsSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.size.width = value
            
        } else {
            
            targetView.bounds.size.width = value
        }
    }
    
    //MARK: - Change Height Value
    
    @IBAction func heightValueDidChange(_ sender: UISlider) {
        
        if viewSeletor.selectedSegmentIndex == 0 {
            
            changeHeightValue(ntuSuperView, to: CGFloat(sender.value))
            
        } else {
            
            changeHeightValue(ntuChildView, to: CGFloat(sender.value))
        }
    }
    
    func changeHeightValue(_ targetView: UIView, to value: CGFloat) {
        
        if frameBoundsSeletor.selectedSegmentIndex == 0 {
            
            targetView.frame.size.height = value
            
        } else {
            
            targetView.bounds.size.height = value
        }
    }
}

