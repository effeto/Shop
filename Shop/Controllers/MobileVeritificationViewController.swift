//
//  MobileVeritificationViewController.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//

import UIKit

class MobileVeritificationViewController: UIViewController, UITextFieldDelegate {
    
    var mobileView = MobileVeritificationView()
    
    var phoneCode = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        mobileView.sendSmsAcrion = sendSmsBtnAction
        mobileView.phoneTextAction = phoneTextAction
        
       
    }
    
    func setView() {
        let mainView = MobileVeritificationView(frame: self.view.frame)
        self.mobileView = mainView
        self.view.addSubview(mobileView)
        self.view.addSubview(mobileView)
        mobileView.setUpView()
        mobileView.phoneText.delegate = self
        mobileView.phoneText.placeholder = phoneCode
    }
    
    func sendSmsBtnAction() {
        mobileView.verifyTextLabel.isHidden = false
        mobileView.sendSmsBtn.isHidden = true
        print("WORKING")
    }
    
    func phoneTextAction() {
        mobileView.phoneText.text = mobileView.phoneText.text!.applyPatternOnNumbers()
        if mobileView.phoneText.text == "" {
            mobileView.sendSmsBtn.layer.backgroundColor = Constants().greyColor
            mobileView.sendSmsBtn.isEnabled = false
        }else{
            mobileView.sendSmsBtn.layer.backgroundColor = Constants().pinkColor
            mobileView.sendSmsBtn.isEnabled = true
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mobileView.phoneText.self.endEditing(true)
    }
    
    
    



}
