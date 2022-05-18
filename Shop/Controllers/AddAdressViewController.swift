//
//  AddAdressViewController.swift
//  Shop
//
//  Created by Демьян on 17.05.2022.
//

import UIKit

class AddAdressViewController: UIViewController {
    
    var addAdressView = AddAdressView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAddAdressView()
    }
    
    func setUpAddAdressView() {
        let mainView = AddAdressView(frame: self.view.frame)
        self.addAdressView = mainView
        self.view.addSubview(addAdressView)
        addAdressView.setUpView()
        addAdressView.setAdreesBtnAction = setAdressAction

    }
    
    func setAdressAction() {
        print("Working")
    }
    



}
