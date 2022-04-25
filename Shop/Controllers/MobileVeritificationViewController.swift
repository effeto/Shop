//
//  MobileVeritificationViewController.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//

import UIKit

class MobileVeritificationViewController: UIViewController, UITextFieldDelegate {
    
    var mobileView = MobileVeritificationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        mobileView.sendSmsAcrion = sendSmsBtnAction
        
       
    }
    
    func setView() {
        let mainView = MobileVeritificationView(frame: self.view.frame)
        self.mobileView = mainView
        self.view.addSubview(mobileView)
        self.view.addSubview(mobileView)
        mobileView.setUpView()
        mobileView.phoneText.delegate = self
    }
    
    func sendSmsBtnAction() {
        if mobileView.phoneText.text == nil {
            mobileView.sendSmsBtn.backgroundColor = .gray
        }else{
            mobileView.sendSmsBtn.layer.backgroundColor =  UIColor(red: 0.929, green: 0.11, blue: 0.454, alpha: 1).cgColor
        }
            
                
    }
    



}
