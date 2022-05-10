//
//  AdsCollectionViewCell.swift
//  Shop
//
//  Created by Демьян on 10.05.2022.
//

import UIKit

class AdsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AdsCollectionViewCell"
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImageView()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 12
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    func setImageView(){
        addSubview(mainImageView)
        
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
