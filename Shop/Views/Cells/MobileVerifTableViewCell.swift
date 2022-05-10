//
//  MobileVerifTableViewCell.swift
//  Shop
//
//  Created by Демьян on 26.04.2022.
//

import UIKit

class MobileVerifTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    let view: UIView = {
        let cellView = UIView()
        cellView.layer.cornerRadius = 10
        cellView.translatesAutoresizingMaskIntoConstraints = false
    
        return cellView
    }()
    
    func setUpView() {
        addSubview(view)
        view.backgroundColor = .white
        view.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

}
