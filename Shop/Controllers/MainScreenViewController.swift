//
//  MainScreenViewController.swift
//  Shop
//
//  Created by Демьян on 27.04.2022.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    
    
    var mainScreenView = MainScreenView()
    let tapBarController = UITabBarController()
    let searchVc = SearchViewController()
    let ordersVC = OrdersViewController()
    let notificationVC = NotificationsViewController()
    let profileVc = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        setUpMainScreenView()
        title = "Home"
        mainScreenView.putYourAddresAction = putYourAdressAction
        mainScreenView.iKnowBtnAction = iKnowAction
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: mainScreenView.putYourAdressBtn)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.clear]
        
        
        
    }
    
    
    
    func setUpMainScreenView() {
        let mainView = MainScreenView(frame: self.view.frame)
        self.mainScreenView = mainView
        self.view.addSubview(mainScreenView)
        mainScreenView.setView()
    }
    
    
    
    
    func createTapBar() {
        self.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(named: "home.png"), tag: 0)
        searchVc.tabBarItem = UITabBarItem.init(title: "Search", image: UIImage(named: "search.png"), tag: 0)
        ordersVC.tabBarItem = UITabBarItem.init(title: "Order", image: UIImage(named: "orders.png"), tag: 0)
        notificationVC.tabBarItem = UITabBarItem.init(title: "Notofoication", image: UIImage(named: "notification.png"), tag: 0)
        profileVc.tabBarItem = UITabBarItem.init(title: "Profile", image: UIImage(named: "profile.png"), tag: 0)
        tapBarController.tabBar.tintColor = UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1)
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1)]
        tapBarController.tabBar.standardAppearance = appearance
        tapBarController.tabBar.backgroundColor = .white
        let viewControllersArr = [MainScreenViewController(), searchVc, ordersVC, notificationVC, profileVc]
        tapBarController.viewControllers = viewControllersArr.map{ UINavigationController.init(rootViewController: $0)}
        view.addSubview(tapBarController.view)
    }
    
    
    
    func putYourAdressAction() {
        print("Working!!!!")
    }
    
    func iKnowAction() {
        print("Working!!!")
    }
    
    
    
    
    
    
}
