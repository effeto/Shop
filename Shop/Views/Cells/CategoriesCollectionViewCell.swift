//
//  CategoriesCollectionViewCell.swift
//  Shop
//
//  Created by Демьян on 17.05.2022.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    static let identifier = "CategoriesCollectionViewCell"
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setImageView()
        setNameLabel()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 12
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    func setImageView(){
        addSubview(mainImageView)
        mainImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 85).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true



    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 160, height: 16)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setNameLabel() {
        addSubview(nameLabel)
        nameLabel.widthAnchor.constraint(equalToConstant: 67).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
    }
}
