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
        mobileView.oneTimeCodeAction = oneTimeCodeAction
        mobileView.verifyBtnAction = verifyBtnAction
        mobileView.finishBtnAction = finishBtnAction
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
        mobileView.sendSmsBtn.isHidden = true
        mobileView.verifyTextLabel.isHidden = false
        mobileView.oneTimeCodeTextLabel.isHidden = false
        mobileView.verifyBtn.isHidden = false
        
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
        mobileView.oneTimeCodeTextLabel.self.endEditing(true)
    }
    
    func verifyBtnAction() {
            hideVerify()
            print("Working")
            mobileView.finisImage.isHidden = false
            mobileView.verifySuccesLabel.isHidden = false
            mobileView.finishBtn.isHidden = false
        
    }
    
    func oneTimeCodeAction() {
        if mobileView.oneTimeCodeTextLabel.text == "" {
            mobileView.verifyBtn.layer.backgroundColor = Constants().greyColor
            mobileView.verifyBtn.isEnabled = false
        }else{
            mobileView.verifyBtn.layer.backgroundColor = Constants().pinkColor
            mobileView.verifyBtn.isEnabled = true
        }
    }
    
    func hideVerify() {
        mobileView.verifyBtn.isHidden = true
        mobileView.oneTimeCodeTextLabel.isHidden = true
        mobileView.phoneText.isHidden = true
        mobileView.imageView.isHidden = true
        mobileView.verifyTextLabel.isHidden = true
    }
    
    func finishBtnAction() {
        print("WORKING!!!")
    }
    
    
    
    
    



}
