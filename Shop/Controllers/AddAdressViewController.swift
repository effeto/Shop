//
//  AddAdressViewController.swift
//  Shop
//
//  Created by Демьян on 17.05.2022.
//

import UIKit
import MapKit
import CoreLocation

class AddAdressViewController: UIViewController, CLLocationManagerDelegate {
    
    var addAdressView = AddAdressView()
    let manager = CLLocationManager()
    var completion: ((CLLocation) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpAddAdressView()
        getUserLocation {[weak self] location in
            DispatchQueue.main.async {
                guard let strongSelf = self else {
                    return
                }
                let pin = MKPointAnnotation()
                pin.coordinate = location.coordinate
                strongSelf.addAdressView.map.setRegion(MKCoordinateRegion(center: location.coordinate,
                                                                          span: MKCoordinateSpan(latitudeDelta: 0.7
                                                                                                 , longitudeDelta: 0.7)),
                                                       animated: true)
                strongSelf.addAdressView.map.addAnnotation(pin)
            }
        }
    }
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
            self.navigationItem.leftBarButtonItem = UIBarButtonItem()
            

        }
    
    func setUpAddAdressView() {
        let mainView = AddAdressView(frame: self.view.frame)
        self.addAdressView = mainView
        self.view.addSubview(addAdressView)
        addAdressView.setUpView()
        addAdressView.setAdreesBtnAction = setAdressAction

    }
    
    public func getUserLocation(completion: @escaping (CLLocation) -> Void) {
        self.completion = completion
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locations = locations.first else {
            return
        }
        completion?(locations)
        manager.stopUpdatingLocation()
    }
    
    func setAdressAction() {
        print("Working")
    }
    



}
