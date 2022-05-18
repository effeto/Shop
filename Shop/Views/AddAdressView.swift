//
//  AddAdressView.swift
//  Shop
//
//  Created by Демьян on 17.05.2022.
//

import UIKit
import MapKit

class AddAdressView: UIView {
    
    var setAdreesBtnAction:(() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView () {
        backgroundColor = .green
        setUpMap()
        setAdressView()
        setUpBtn()
        setUpTitleLabel()
        setAdressTextField()
    }
    
    
    let map: MKMapView = {
        let map = MKMapView()
        return map
    }()
    
    func setUpMap() {
        self.addSubview(map)
        map.frame = self.bounds
        
    }
    
    let adressView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 343, height: 172)
        view.backgroundColor = .white
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setAdressView() {
        self.addSubview(adressView)
        adressView.widthAnchor.constraint(equalToConstant: 343).isActive = true
        adressView.heightAnchor.constraint(equalToConstant: 172).isActive = true
        adressView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        adressView.topAnchor.constraint(equalTo: self.topAnchor, constant: 606).isActive = true
    }
    

    let titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 203, height: 24)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 16)
        label.text = "Enter delivery address"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setUpTitleLabel() {
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.widthAnchor.constraint(equalToConstant: 203).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 622).isActive = true
    }
    
    let button: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 311, height: 48)
        btn.backgroundColor = .white
        btn.layer.backgroundColor = UIColor(red: 0.883, green: 0.883, blue: 0.883, alpha: 1).cgColor
        btn.layer.cornerRadius = 20
        btn.setTitle("Submit", for: .normal)
        btn.addTarget(self, action: #selector(setUpBtnTapped), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    func setUpBtn() {
        self.addSubview(button)
        button.widthAnchor.constraint(equalToConstant: 311).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32).isActive = true
        button.topAnchor.constraint(equalTo: self.topAnchor, constant: 714).isActive = true
    }
    
    let adressTextField: UITextField = {
        let text = UITextField()
        text.frame = CGRect(x: 0, y: 0, width: 311, height: 24)
        text.backgroundColor = .white
        text.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        text.placeholder = "Your adress >"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    func setAdressTextField() {
        adressView.addSubview(adressTextField)
        adressTextField.widthAnchor.constraint(equalToConstant: 311).isActive = true
        adressTextField.heightAnchor.constraint(equalToConstant: 24).isActive = true
        adressTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32).isActive = true
        adressTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 658).isActive = true
    }
    

    

}

extension AddAdressView {
    @objc func setUpBtnTapped() {
        setAdreesBtnAction?()
    }
}
