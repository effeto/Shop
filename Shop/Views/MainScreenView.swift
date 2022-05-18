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
        setPutYoirAdressBtn()
        setAds()
        setIKnowBtn()
        setPopularMallsTableView()
        setCategoriesLabel()
        setCategoriesCollection()
        
    }
    
    let putYourAdressBtn: UIButton = {
        let button =  UIButton(frame: CGRect (x: 0, y: 0, width: 154, height: 24))
        button.addTarget(self, action: #selector(putYourAdressTaped), for: .touchUpInside)
        button.setTitle("Put your address >", for: .normal)
        button.setImage(UIImage(systemName: "map.png"), for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 16)
        button.setTitleColor(UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false


        return button

    }()
    
    func setPutYoirAdressBtn() {
        self.addSubview(putYourAdressBtn)

        putYourAdressBtn.widthAnchor.constraint(equalToConstant: 154).isActive = true
        putYourAdressBtn.heightAnchor.constraint(equalToConstant: 24).isActive = true
        putYourAdressBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        putYourAdressBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 52).isActive = true
    }
    
    
    
    let adsCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 160, height: 100)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.automaticallyAdjustsScrollIndicatorInsets = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .clear
        layout.scrollDirection = .horizontal
        
        collectionView.register(AdsCollectionViewCell.self, forCellWithReuseIdentifier: AdsCollectionViewCell.identifier)
                
        return collectionView
        
    }()
    
    func setAds() {
        self.addSubview(adsCollectionView)
        adsCollectionView.widthAnchor.constraint(equalToConstant: 496).isActive = true
        adsCollectionView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        adsCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        adsCollectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 104).isActive = true
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
        button.layer.cornerRadius = 20
        return button
    }()
    
    func setIKnowBtn() {
        self.addSubview(iKnowBtn)
        iKnowBtn.widthAnchor.constraint(equalToConstant: 343).isActive = true
        iKnowBtn.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iKnowBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        iKnowBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 226).isActive = true
    }
    
    
    let popularMallsLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 343, height: 32)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 28)
        label.text = "Popular Malls"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setPopMallLabel() {
        self.addSubview(popularMallsLabel)
    }
    
    let popularMallCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 160, height: 124)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.automaticallyAdjustsScrollIndicatorInsets = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        layout.scrollDirection = .horizontal
        collectionView.register(MallsCollectionViewCell.self, forCellWithReuseIdentifier: MallsCollectionViewCell.identifier)
        return collectionView
    }()
    
    func setPopularMallsTableView() {
        self.addSubview(popularMallCollectionView)
        popularMallCollectionView.widthAnchor.constraint(equalToConstant: 496).isActive = true
        popularMallCollectionView.heightAnchor.constraint(equalToConstant: 172).isActive = true
        popularMallCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        popularMallCollectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 316).isActive = true
        
    }
    
    let categoriesLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 160, height: 32)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 28)
        label.text = "Categories"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setCategoriesLabel() {
        self.addSubview(categoriesLabel)
        categoriesLabel.widthAnchor.constraint(equalToConstant: 160).isActive = true
        categoriesLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        categoriesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        categoriesLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 512).isActive = true
    }
    
    
    let categoriesCollection: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 160, height: 124)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.automaticallyAdjustsScrollIndicatorInsets = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        layout.scrollDirection = .vertical
        collectionView.register(CategoriesCollectionViewCell.self, forCellWithReuseIdentifier: CategoriesCollectionViewCell.identifier)
        return collectionView
    }()
    
    func setCategoriesCollection() {
        self.addSubview(categoriesCollection)
        categoriesCollection.widthAnchor.constraint(equalToConstant: 342).isActive = true
        categoriesCollection.heightAnchor.constraint(equalToConstant: 212).isActive = true
        categoriesCollection.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        categoriesCollection.topAnchor.constraint(equalTo: self.topAnchor, constant: 560).isActive = true
        
    }
    
    
    
    @objc func putYourAdressTaped() {
        putYourAddresAction?()
        
    }
    
    @objc func iKnowBtnTaped() {
        iKnowBtnAction?()
    }
}
