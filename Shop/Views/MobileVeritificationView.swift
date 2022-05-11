//
//  MobileVeritificationView.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//Finish TextField

import UIKit

class MobileVeritificationView: UIView {
    
    var sendSmsAcrion: (() -> Void)?
    var phoneTextAction:(() -> Void)?
    var verifyBtnAction:(() -> Void)?
    var oneTimeCodeAction:(() -> Void)?
    var finishBtnAction: (() -> Void)?
    

    
    
    
    
    
    
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
        setVerifyTextLabel()
        oneTimeCodeTextLabel.configure(withSlotCount: 4, andSpacing: 10)
        setOneTimeCodeTextField()
        setVerifyBtn()
        setFinishImage()
        setVerifySucess()
        setFinishBtn()
       
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
        text.keyboardType = .numberPad
        text.textAlignment = .left
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        text.font = UIFont(name: "Poppins-Medium", size: 16)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.addTarget(self, action: #selector(phoneTextTaped), for: .editingChanged)
       
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
        button.layer.backgroundColor = Constants().greyColor
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
    
    let verifyTextLabel: UILabel =  {
        let text = UILabel()
        text.frame = CGRect(x: 0, y: 0, width: 327, height: 54)
        text.backgroundColor = .white
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        text.font = UIFont(name: "Poppins-Regular", size: 18)
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.isHidden = true
        return text
    }()
    
    func setVerifyTextLabel() {
        self.addSubview(verifyTextLabel)
        verifyTextLabel.text = "Enter the 4 digit number sent to this phone number: \(phoneText.text ?? "")"
        verifyTextLabel.translatesAutoresizingMaskIntoConstraints = false
        verifyTextLabel.widthAnchor.constraint(equalToConstant: 327).isActive = true
        verifyTextLabel.heightAnchor.constraint(equalToConstant: 54).isActive = true
        verifyTextLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        verifyTextLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 412).isActive = true
    }
    
    
    let oneTimeCodeTextLabel = OneTimeCodeTextField()
    
    func setOneTimeCodeTextField() {
        self.addSubview(oneTimeCodeTextLabel)
        oneTimeCodeTextLabel.backgroundColor = .blue
        oneTimeCodeTextLabel.codeFont = UIFont(name: "Poppins-Medium", size: 36)!
        oneTimeCodeTextLabel.codeMinimumScaleFactor = 0.9
        oneTimeCodeTextLabel.codeCornerRadius = 0
        oneTimeCodeTextLabel.codeCornerCurve = .circular
        oneTimeCodeTextLabel.codeBorderWidth = 0
        oneTimeCodeTextLabel.isHidden = true
        oneTimeCodeTextLabel.codeBorderColor = .clear
        oneTimeCodeTextLabel.translatesAutoresizingMaskIntoConstraints = false
        oneTimeCodeTextLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 148).isActive = true
        oneTimeCodeTextLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 498).isActive = true
        oneTimeCodeTextLabel.addTarget(self, action: #selector(oneTimeCodeTaped), for: .editingChanged)


    }
    
    let verifyBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        button.layer.backgroundColor = Constants().greyColor
        button.layer.cornerRadius = 20
        button.setTitle("Verify", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(verifyBtnTaped), for: .touchUpInside)
        button.isHidden = true
        button.isEnabled = false
        
        return button
    }()
    
    func setVerifyBtn() {
        self.addSubview(verifyBtn)
        verifyBtn.widthAnchor.constraint(equalToConstant: 343).isActive = true
        verifyBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        verifyBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        verifyBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 642).isActive = true
    }
    
    let finisImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "finish.png")
        image.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        image.backgroundColor = .white
        image.isHidden = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func setFinishImage() {
        self.addSubview(finisImage)
        finisImage.translatesAutoresizingMaskIntoConstraints = false
        finisImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        finisImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        finisImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 128).isActive = true
        finisImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 244).isActive = true
    }
    
    let verifySuccesLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 306, height: 24)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.text = "Your number successfully verified"
        label.font = UIFont(name: "Poppins-Medium", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()
    
    func setVerifySucess() {
        self.addSubview(verifySuccesLabel)
        verifySuccesLabel.widthAnchor.constraint(equalToConstant: 306).isActive = true
        verifySuccesLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        verifySuccesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35).isActive = true
        verifySuccesLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 404).isActive = true
    }
    
    let finishBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        button.layer.backgroundColor = Constants().pinkColor
        button.layer.cornerRadius = 20
        button.setTitle("Finish", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(finishBtnTaped), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    func setFinishBtn() {
        self.addSubview(finishBtn)
        finishBtn.widthAnchor.constraint(equalToConstant: 343).isActive = true
        finishBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        finishBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        finishBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 468).isActive = true


    }
    

    
    @objc func sendSmsTaped() {
        sendSmsAcrion?()
    }
    
    @objc func phoneTextTaped() {
        phoneTextAction?()
    }
    
    @objc func verifyBtnTaped() {
        verifyBtnAction?()
    }
    
    @objc func oneTimeCodeTaped() {
        oneTimeCodeAction?()
    }
    
    @objc func finishBtnTaped() {
        finishBtnAction?()
    }
    
    

}
