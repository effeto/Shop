//
//  MobileVeritificationView.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//Finish TextField

import UIKit

class MobileVeritificationView: UIView {
    
    var sendSmsAcrion: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        backgroundColor = .white
        setImageView()
        setPhoneText()
        setsendSmsBtn()
    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "mobile.png")
        image.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        image.backgroundColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func setImageView() {
        self.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 128).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 156).isActive = true

    }
    
    let phoneText: UITextField = {
        let text = UITextField()
        text.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        text.backgroundColor = .white
        text.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        text.layer.cornerRadius = 12
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    func setPhoneText() {
        self.addSubview(phoneText)
        phoneText.translatesAutoresizingMaskIntoConstraints = false
        phoneText.widthAnchor.constraint(equalToConstant: 343).isActive = true
        phoneText.heightAnchor.constraint(equalToConstant: 48).isActive = true
        phoneText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        phoneText.topAnchor.constraint(equalTo: self.topAnchor, constant: 332).isActive = true
        
    }
    
    let sendSmsBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        button.layer.backgroundColor = UIColor(red: 0.929, green: 0.11, blue: 0.454, alpha: 1).cgColor
        button.layer.cornerRadius = 20
        button.setTitle("Send code", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(sendSmsTaped), for: .touchUpInside)
        
        return button
    }()
    
    func setsendSmsBtn() {
        self.addSubview(sendSmsBtn)
        sendSmsBtn.translatesAutoresizingMaskIntoConstraints = false
        sendSmsBtn.widthAnchor.constraint(equalToConstant: 343).isActive = true
        sendSmsBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        sendSmsBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        sendSmsBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 420).isActive = true
    }
    
    @objc func sendSmsTaped() {
        sendSmsAcrion?()
    }
    
    

}
