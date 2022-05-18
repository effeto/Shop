//
//  ViewController.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//

import UIKit

class LoginViewController: UIViewController, UIGestureRecognizerDelegate {
    
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
        let phonesVC = PhoneNumbersTableViewController()
        let backBTN = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"),
                                      style: .plain,
                                      target: navigationController,
                                      action: #selector(UINavigationController.popViewController(animated:)))
        backBTN.tintColor = .black
        self.navigationController?.pushViewController(phonesVC, animated: true)
        phonesVC.modalPresentationStyle = .currentContext
        phonesVC.title = "Phone Numbers"
        phonesVC.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 18)!]
        phonesVC.navigationItem.leftBarButtonItem = backBTN
        phonesVC.navigationController?.interactivePopGestureRecognizer?.delegate = self
        print("working")
    }
    
    func appleBtnAction() {
        print ("working")
        let mainScreenVC = MainScreenViewController()
//        mainScreenVC.createTapBar()
        show(mainScreenVC, sender: self)
        
    }
    
    func googleBtnAction() {
        print("Working")
        let mainScreenVC = MainScreenViewController()
        show(mainScreenVC, sender: self)
    }
    
    func guestBtnAction() {
        print("working")
        let mainScreenVC = MainScreenViewController()
        show(mainScreenVC, sender: self)
    }


}

