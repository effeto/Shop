//
//  PhoneNumbersTableView.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//

import UIKit

class PhoneNumbersTableView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        backgroundColor = .white
        setTableView()
    }
    
    let phonesTable:UITableView = {
        let tableView = UITableView()
        
        tableView.backgroundColor = .white
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
        
        return tableView
        
    }()
    
    func setTableView() {
        addSubview(phonesTable)
        phonesTable.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        phonesTable.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        phonesTable.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        phonesTable.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    


        lazy var searchController: UISearchController = {
            let s = UISearchController(searchResultsController: nil)
            s.obscuresBackgroundDuringPresentation = false
            s.searchBar.placeholder = "Countries"
            s.searchBar.sizeToFit()
            s.searchBar.searchBarStyle = .prominent
            phonesTable.tableHeaderView = s.searchBar
            
            return s
            

        }()
    





}
