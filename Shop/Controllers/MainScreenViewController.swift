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
    
    var adds: [Adds] = []
    var malls: [Malls] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        setUpMainScreenView()
        title = "Home"
        self.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(named: "home.png"), tag: 0)
        mainScreenView.putYourAddresAction = putYourAdressAction
        mainScreenView.iKnowBtnAction = iKnowAction
        adds = getAdd()
        malls = getMalls()
        mainScreenView.adsCollectionView.dataSource = self
        mainScreenView.adsCollectionView.delegate = self
        mainScreenView.popularMallCollectionView.dataSource = self
        mainScreenView.popularMallCollectionView.delegate = self
        
        
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

extension MainScreenViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mainScreenView.popularMallCollectionView {
            return malls.count
        }
        return adds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainScreenView.popularMallCollectionView {
            let cell = mainScreenView.popularMallCollectionView.dequeueReusableCell(withReuseIdentifier: MallsCollectionViewCell.identifier, for: indexPath) as! MallsCollectionViewCell
            cell.mainImageView.image = malls[indexPath.row].addImage
            cell.nameLabel.text = malls[indexPath.row].name
            cell.backgroundColor = .green
            cell.layer.cornerRadius = 12
            return cell
        }

        let cell = mainScreenView.adsCollectionView.dequeueReusableCell(withReuseIdentifier: AdsCollectionViewCell.identifier, for: indexPath) as! AdsCollectionViewCell
        cell.mainImageView.image =  adds[indexPath.row].addImage
        cell.backgroundColor = .red
        cell.layer.cornerRadius = 12
 
        return cell
    }
    
    func getAdd() -> [Adds] {
        let add1 = Adds(addImage: UIImage(named: "add1.png")!)
        let add2 = Adds(addImage: UIImage(named:"add2.png")!)
        let add3 = Adds(addImage: UIImage(named:"add3.png")!)
        let add4 = Adds(addImage: UIImage(named:"add4.png")!)
        
        return [add1, add2, add3, add4]
    }
    
    func getMalls() -> [Malls] {
        let mall1 = Malls(addImage: UIImage(named: "mall1.png")!, name: "Name1")
        let mall2 = Malls(addImage: UIImage(named: "mall2.png")!, name: "Name2")
        let mall3 = Malls(addImage: UIImage(named: "mall3.png")!, name: "Name3")
        let mall4 = Malls(addImage: UIImage(named: "mall4.png")!, name: "Name4")
        
        return [mall1, mall2, mall3, mall4]
    }
    
    
}


