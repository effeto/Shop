//
//  ViewController.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setLoginView()
        
    }
    
    func setLoginView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        self.view.addSubview(loginView)
        loginView.setUpView()
        loginView.phoneNubAction = phoneNumAction
        loginView.appleBtnAction = appleBtnAction
        loginView.googleBtnAction = googleBtnAction
        loginView.guestBtnAction = guestBtnAction
        
    }
    
    
    func phoneNumAction() {
        print("working")
    }
    
    func appleBtnAction() {
        print ("working")
    }
    
    func googleBtnAction() {
        print("Working")
    }
    
    func guestBtnAction() {
        print("working")
    }


}

