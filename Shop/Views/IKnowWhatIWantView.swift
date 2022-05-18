//
//  IKnowWhatIWantView.swift
//  Shop
//
//  Created by Демьян on 18.05.2022.
//

import UIKit
import MapKit

class IKnowWhatIWantView: UIView {
    
    var uploadPhotoBtnAction:(() -> Void)?
    var submitBtnAction:(()-> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        backgroundColor = .white
        setBackBtn()
        setTitleLabel()
        setStoreNameTextField()
        setMap()
        setProductNameTextField()
        setProductDescrTextField()
        setProductLinkTextField()
        setUploadPhotoView()
        setUploadPhotoTitle()
        setUploadPhotoDescr()
        setUploadPhotoBtn()
        setSubmitBtn()
        
    }
    
    let backBtn: UIButton = {
        let button = UIButton()
        button.imageView?.image = UIImage(systemName: "arrow.backward")
        button.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        button.backgroundColor = .white
        button.setTitle("Has to Work", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setBackBtn() {
        self.addSubview(backBtn)
        backBtn.widthAnchor.constraint(equalToConstant: 16).isActive = true
        backBtn.heightAnchor.constraint(equalToConstant: 16).isActive = true
        backBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4).isActive = true
        backBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 263, height: 40)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 28)
        label.text = "I know what I want"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setTitleLabel() {
        self.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 263).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 108).isActive = true
    }
    
    let storeNameTextField: UITextField = {
        let text = UITextField()
        text.placeholder = " Store Name"
        text.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        text.backgroundColor = .white
        text.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        text.layer.cornerRadius = 12
        text.keyboardType = .default
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        text.font = UIFont(name: "Poppins-Medium", size: 14)
        return text
    }()
    
    func setStoreNameTextField() {
        self.addSubview(storeNameTextField)
        storeNameTextField.widthAnchor.constraint(equalToConstant: 343).isActive = true
        storeNameTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        storeNameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        storeNameTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 160).isActive = true
    }
    
    let map: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        map.layer.cornerRadius = 20
        return map
    }()
    
    func setMap() {
        self.addSubview(map)
        map.widthAnchor.constraint(equalToConstant: 343).isActive = true
        map.heightAnchor.constraint(equalToConstant: 199).isActive = true
        map.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        map.topAnchor.constraint(equalTo: self.topAnchor, constant: 224).isActive = true
    }
    
    let productNameTextField: UITextField = {
        let text = UITextField()
        text.placeholder = " Product Name"
        text.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        text.backgroundColor = .white
        text.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        text.layer.cornerRadius = 12
        text.keyboardType = .default
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        text.font = UIFont(name: "Poppins-Medium", size: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    func setProductNameTextField() {
        self.addSubview(productNameTextField)
        productNameTextField.widthAnchor.constraint(equalToConstant: 343).isActive = true
        productNameTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        productNameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        productNameTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 439).isActive = true
    }
    
    let productDescriptionTextField: UITextField = {
        let text = UITextField()
        text.placeholder = " Product Description"
        text.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        text.backgroundColor = .white
        text.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        text.layer.cornerRadius = 12
        text.keyboardType = .default
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        text.font = UIFont(name: "Poppins-Medium", size: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    func setProductDescrTextField() {
        self.addSubview(productDescriptionTextField)
        productDescriptionTextField.widthAnchor.constraint(equalToConstant: 343).isActive = true
        productDescriptionTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        productDescriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        productDescriptionTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 499).isActive = true
    }
    
    let productLinkTextField: UITextField = {
        let text = UITextField()
        text.placeholder = " Product Link(Optional)"
        text.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        text.backgroundColor = .white
        text.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        text.layer.cornerRadius = 12
        text.keyboardType = .URL
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        text.font = UIFont(name: "Poppins-Medium", size: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    func setProductLinkTextField() {
        self.addSubview(productLinkTextField)
        productLinkTextField.widthAnchor.constraint(equalToConstant: 343).isActive = true
        productLinkTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        productLinkTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        productLinkTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 559).isActive = true
    }
    
    let uploadPhotoView: UIView = {
        let photo = UIView()
        photo.frame = CGRect(x: 0, y: 0, width: 343, height: 94)
        photo.backgroundColor = .white
        photo.layer.cornerRadius = 12
        photo.layer.borderWidth = 1
        photo.layer.borderColor = UIColor(red: 0.867, green: 0.867, blue: 0.867, alpha: 1).cgColor
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    func setUploadPhotoView() {
        self.addSubview(uploadPhotoView)
        uploadPhotoView.widthAnchor.constraint(equalToConstant: 343).isActive = true
        uploadPhotoView.heightAnchor.constraint(equalToConstant: 94).isActive = true
        uploadPhotoView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        uploadPhotoView.topAnchor.constraint(equalTo: self.topAnchor, constant: 623).isActive = true
    }
    
    let uploadPhotoTitle: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 96, height: 24)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        label.font = UIFont(name: "Poppins-SemiBold", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.14
        label.attributedText = NSMutableAttributedString(string: "Upload Photo",
                                                         attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setUploadPhotoTitle() {
        self.addSubview(uploadPhotoTitle)
        uploadPhotoTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        uploadPhotoTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 643).isActive = true
        uploadPhotoTitle.widthAnchor.constraint(equalToConstant: 96).isActive = true
        uploadPhotoTitle.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    let uploadPhotoDescr: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 225, height: 16)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.89
        label.attributedText = NSMutableAttributedString(string: "It can arrange the process (optional)", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setUploadPhotoDescr() {
        self.addSubview(uploadPhotoDescr)
        uploadPhotoDescr.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        uploadPhotoDescr.topAnchor.constraint(equalTo: self.topAnchor, constant: 675).isActive = true
        uploadPhotoDescr.widthAnchor.constraint(equalToConstant: 225).isActive = true
        uploadPhotoDescr.heightAnchor.constraint(equalToConstant: 16).isActive = true
    }
    
    let uploadPhotoBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        button.backgroundColor = .white
        button.setImage(UIImage(named: "upload.png"), for: .normal)
        button.addTarget(self, action: #selector(uploadPhotoBtnTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setUploadPhotoBtn() {
        uploadPhotoView.addSubview(uploadPhotoBtn)
        uploadPhotoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        uploadPhotoBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        uploadPhotoBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 285).isActive = true
        uploadPhotoBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 645).isActive = true
    }
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 343, height: 48)
        button.backgroundColor = .white
        button.layer.backgroundColor = UIColor(red: 0.883, green: 0.883, blue: 0.883, alpha: 1).cgColor
        button.layer.cornerRadius = 12
        button.setTitle("Submit", for: .normal)
        button.addTarget(self, action: #selector(submitBtnTapped), for: .touchUpInside)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setSubmitBtn() {
        self.addSubview(submitButton)
        submitButton.widthAnchor.constraint(equalToConstant: 343).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        submitButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        submitButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 729).isActive = true


    }
    
    
    @objc func uploadPhotoBtnTapped() {
        uploadPhotoBtnAction?()
    }
    
    @objc func submitBtnTapped() {
        submitBtnAction?()
    }
    

}
