//
//  LoginView.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//CREATE LOGIN BTN IN loginLabel

import UIKit

class LoginView: UIView {
    
    var phoneNubAction: (() -> Void)?
    var appleBtnAction: (() -> Void)?
    var googleBtnAction: (() -> Void)?
    var guestBtnAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        backgroundColor = .white
        setLogoImage()
        setWelcomeLabel()
        setPhoneButton()
        setSighnUpApple()
        setSighnUpGoogle()
        setLoginnLabel()
        setGuestAccBtn()
    }
    
    let logoImage: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 139.2, height: 93.78)
        image.backgroundColor = .white
        image.image = UIImage(named: "LogoPink.png")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func setLogoImage() {
        self.addSubview(logoImage)
        logoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 122.39).isActive = true
        logoImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 118.4).isActive = true
        logoImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -117.4).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -595.83).isActive = true
   
    }
    
    let welcomeLabel: UILabel = {
        let welcome = UILabel()
        welcome.frame = CGRect(x: 0, y: 0, width: 139, height: 32)
        welcome.backgroundColor = .white
        welcome.textColor = .black
        welcome.font = UIFont(name: "Poppins-SemiBold", size: 28)
        welcome.textAlignment = .center
        welcome.text = "Welcome"
        welcome.translatesAutoresizingMaskIntoConstraints = false
        return welcome
    }()
    
    func setWelcomeLabel() {
        self.addSubview(welcomeLabel)
        welcomeLabel.widthAnchor.constraint(equalToConstant: 139).isActive = true
        welcomeLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        welcomeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 118).isActive = true
        welcomeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 240).isActive = true
    }
    
    let phoneButton: UIButton = {
        let phone = UIButton()
        phone.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        phone.backgroundColor = .white
        phone.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        phone.layer.cornerRadius = 12
        phone.setTitle("Phone number                                    >", for: .normal)
        phone.setTitleColor(UIColor.black, for: .normal)
        phone.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.addTarget(self, action: #selector(phoneNumTaped), for: .touchUpInside)
        return phone
    }()
    
    func setPhoneButton() {
        self.addSubview(phoneButton)
        phoneButton.widthAnchor.constraint(equalToConstant: 343).isActive = true
        phoneButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        phoneButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        phoneButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 312).isActive = true
    }
    
    let signUpApple: UIButton = {
        let apple = UIButton()
        apple.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        apple.backgroundColor = .white
        apple.layer.backgroundColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1).cgColor
        apple.layer.cornerRadius = 20
        apple.setTitle("Sighn Up With Apple", for: .normal)
        apple.setImage(UIImage(systemName: "applelogo"), for: .normal)
        apple.imageEdgeInsets.left = -20
        apple.setTitleColor(UIColor.white, for: .normal)
        apple.translatesAutoresizingMaskIntoConstraints = false
        apple.tintColor = .white
        apple.addTarget(self, action: #selector(appleBtnTapped), for: .touchUpInside)
        return apple
    }()
    
    func setSighnUpApple() {
        self.addSubview(signUpApple)
        signUpApple.widthAnchor.constraint(equalToConstant: 343).isActive = true
        signUpApple.heightAnchor.constraint(equalToConstant: 48).isActive = true
        signUpApple.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        signUpApple.topAnchor.constraint(equalTo: self.topAnchor, constant: 400).isActive = true
    }
    
    let sighnUpGoogle: UIButton = {
        let google = UIButton()
     
        google.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        google.backgroundColor = .white
        google.layer.cornerRadius = 20
        google.layer.borderWidth = 1
        google.layer.borderColor = UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1).cgColor
        google.setTitle("Sighn Up With Google", for: .normal)
        google.setTitleColor(UIColor.black, for: .normal)
        google.setImage(UIImage(named: "googleLogo.png"), for: .normal)
        google.imageView?.contentMode = .scaleAspectFit
        google.titleEdgeInsets = UIEdgeInsets(top: 0, left: -505, bottom: 0, right: 10)
        google.imageEdgeInsets = UIEdgeInsets(top: 15, left: -192 , bottom: 15, right: 0)
        google.translatesAutoresizingMaskIntoConstraints = false
        google.addTarget(self, action: #selector(googleBtnTapped), for: .touchUpInside)
        google.tintColor = .white
        return google
    }()
    
    func setSighnUpGoogle() {
        self.addSubview(sighnUpGoogle)
        sighnUpGoogle.widthAnchor.constraint(equalToConstant: 343).isActive = true
        sighnUpGoogle.heightAnchor.constraint(equalToConstant: 48).isActive = true
        sighnUpGoogle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        sighnUpGoogle.topAnchor.constraint(equalTo: self.topAnchor, constant: 464).isActive = true
    }
    
    let loginLabel:UILabel = {
        let login = UILabel()
        login.frame = CGRect(x: 0, y: 0, width: 232, height: 16)
        login.backgroundColor = .white
        login.textColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1)
        login.font = UIFont(name: "Poppins-Regular", size: 14)
        login.text = "Already have an account ? Login."
        login.translatesAutoresizingMaskIntoConstraints = false
        
        return login
    }()
    
    func setLoginnLabel() {
        self.addSubview(loginLabel)
        loginLabel.widthAnchor.constraint(equalToConstant: 232).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        loginLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 72).isActive = true
        loginLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 552).isActive = true
    }
    
    let guestAccBtn: UIButton = {
        let guest = UIButton()
        guest.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        guest.backgroundColor = .white
        guest.layer.cornerRadius = 20
        guest.layer.borderWidth = 1
        guest.layer.borderColor = UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1).cgColor
        guest.setTitle("Enter as a Guest", for: .normal)
        guest.setTitleColor(UIColor.black, for: .normal)
        guest.translatesAutoresizingMaskIntoConstraints = false
        guest.addTarget(self, action: #selector(guestBtnTapped), for: .touchUpInside)
        return guest
    }()
    
    func setGuestAccBtn() {
        self.addSubview(guestAccBtn)
        guestAccBtn.translatesAutoresizingMaskIntoConstraints = false
        guestAccBtn.widthAnchor.constraint(equalToConstant: 343).isActive = true
        guestAccBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        guestAccBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        guestAccBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 684).isActive = true
        
    }
    
    
    @objc func phoneNumTaped() {
        phoneNubAction?()
    }
    
    @objc func appleBtnTapped() {
        appleBtnAction?()
    }
    
    @objc func googleBtnTapped(){
        googleBtnAction?()
    }
    
    @objc func guestBtnTapped() {
        guestBtnAction?()
    }

}
