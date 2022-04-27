//
//  TabBarController.swift
//  Shop
//
//  Created by Демьян on 27.04.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    
    
    let homeVC = MainScreenViewController()
    let searchVC = SearchViewController()
    let ordersVC = OrdersViewController()
    let notificationVC = NotificationsViewController()
    let profileVC = ProfileViewController()

    override func viewDidLoad() {
        searchVC.tabBarItem = UITabBarItem.init(title: "Search", image: nil, tag: 0)
        ordersVC.tabBarItem = UITabBarItem.init(title: "Order", image: nil, tag: 0)
        notificationVC.tabBarItem = UITabBarItem.init(title: "Notofoication", image: nil, tag: 0)
        profileVC.tabBarItem = UITabBarItem.init(title: "Profile", image: nil, tag: 0)

       TabBarController().tabBar.layer.backgroundColor = Constants().pinkColor
       TabBarController().tabBar.backgroundColor = .white


        let viewControllersArr = [ searchVC, ordersVC, notificationVC, profileVC]
       TabBarController().viewControllers = viewControllersArr.map{ UINavigationController.init(rootViewController: $0)}

        view.addSubview(TabBarController().view)
    }
    }
           
           

        

}
