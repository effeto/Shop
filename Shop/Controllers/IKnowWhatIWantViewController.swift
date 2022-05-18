//
//  IKnowWhatIWantViewController.swift
//  Shop
//
//  Created by Демьян on 18.05.2022.
//

import UIKit

class IKnowWhatIWantViewController: UIViewController {
    
    var iKnowWhatIWantView = IKnowWhatIWantView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        
    }
    
    func setView() {
        let mainView = IKnowWhatIWantView(frame: self.view.frame)
        self.iKnowWhatIWantView = mainView
        self.view.addSubview(iKnowWhatIWantView)
        iKnowWhatIWantView.setUpView()
        iKnowWhatIWantView.uploadPhotoBtnAction = uploadPhotoBtnAction
        iKnowWhatIWantView.submitBtnAction = submitBtnAction
    }
    
    
    func uploadPhotoBtnAction() {
        print("WORKING!")
    }
    
    func submitBtnAction() {
        print("Working!")
    }
    

    

    
    
    


   

}
