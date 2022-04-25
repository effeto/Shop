//
//  PhoneNumbersTableViewController.swift
//  Shop
//
//  Created by Демьян on 25.04.2022.
//
// DO SEARCH LOGIC AND PHONE NUMBERS LIST!

import UIKit

class PhoneNumbersTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating, UIGestureRecognizerDelegate {

    var phoneView = PhoneNumbersTableView()
    var phoneTableView = UITableView()
    
    var phoneCodes:[CountriesData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        phoneView.setUpView()
        phoneView.searchController.searchResultsUpdater = self
        phoneCodes = getData()

    }
    
    func setView() {
        let mainView = PhoneNumbersTableView(frame: self.view.frame)
        self.phoneView = mainView
        self.view.addSubview(phoneView)
        phoneTableView = phoneView.phonesTable
        phoneTableView.dataSource = self
        phoneTableView.delegate = self
        
    }
    

    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneCodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = phoneTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var contect = cell.defaultContentConfiguration()
        contect.text = phoneCodes[indexPath.row].name
        cell.contentConfiguration = contect
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mobileVC = MobileVeritificationViewController()
        
        mobileVC.modalPresentationStyle = .currentContext
        mobileVC.title = "Mobile Veritification"
        let backBTN = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"),
                                      style: .plain,
                                      target: navigationController,
                                      action: #selector(UINavigationController.popViewController(animated:)))
        backBTN.tintColor = .black
        mobileVC.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Poppins-Regular", size: 18)!]
        mobileVC.navigationItem.leftBarButtonItem = backBTN
        show(mobileVC, sender: self)
        print(phoneCodes[indexPath.row].code)

    }
    
    
    func getData() -> [CountriesData] {
        let phone1 = CountriesData(name: "Ukraine", code: "+380")
        let phone2 = CountriesData(name: "Canada", code: "+1")
        let phone3 = CountriesData(name: "USA", code: "+1")
        let phone4 = CountriesData(name: "United Kingdom", code: "+44")
        let phone5 = CountriesData(name: "United Arab Emirates", code: "+971")
        
        return [phone1, phone2, phone3, phone4, phone5]
        
    }
    
    
    
    



}
