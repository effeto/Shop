//
//  MainScrenView.swift
//  Shop
//
//  Created by Демьян on 27.04.2022.
//

import UIKit

class MainScreenView: UIView {
    
    var putYourAddresAction:(() -> Void)?
    var iKnowBtnAction:(() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        setAds()
        setIKnowBtn()
        setPopularMallsTableView()
    }
    
    let putYourAdressBtn: UIButton = {
        let button =  UIButton(frame: CGRect (x: 0, y: 0, width: 154, height: 24))
        button.addTarget(self, action: #selector(putYourAdressTaped), for: .touchUpInside)
        button.setTitle("Put your address >", for: .normal)
        button.setImage(UIImage(systemName: "map.png"), for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 16)
        button.setTitleColor(UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1), for: .normal)

        return button

    }()
    
    let adsTableView:UITableView = {
        let tableView = UITableView()
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .green
                
        return tableView
        
    }()
    
    func setAds() {
        self.addSubview(adsTableView)
        adsTableView.widthAnchor.constraint(equalToConstant: 496).isActive = true
        adsTableView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        adsTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        adsTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 104).isActive = true
    }
    
    let iKnowBtn: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 343, height: 64))
        button.addTarget(self, action: #selector(iKnowBtnTaped), for: .touchUpInside)
        button.setTitle(" I know what I want     >", for: .normal)
        button.setImage(UIImage(named: "iknowImage.png"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18)
        button.setTitleColor(UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 12
        return button
    }()
    
    func setIKnowBtn() {
        self.addSubview(iKnowBtn)
        iKnowBtn.widthAnchor.constraint(equalToConstant: 343).isActive = true
        iKnowBtn.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iKnowBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        iKnowBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 226).isActive = true
    }
    
    let popularMallTableView: UITableView = {
        let tableView = UITableView()
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .red
        return tableView
    }()
    
    func setPopularMallsTableView() {
        self.addSubview(popularMallTableView)
        popularMallTableView.widthAnchor.constraint(equalToConstant: 496).isActive = true
        popularMallTableView.heightAnchor.constraint(equalToConstant: 172).isActive = true
        popularMallTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        popularMallTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 316).isActive = true
        
    }
    
    @objc func putYourAdressTaped() {
        putYourAddresAction?()
        
    }
    
    @objc func iKnowBtnTaped() {
        iKnowBtnAction?()
    }
}
