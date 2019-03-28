//
//  LocationViewController.swift
//  FindMeAHotSpot
//
//  Created by Mohammad Farzane on 2019-03-15.
//  Copyright © 2019 ShahinFarzane. All rights reserved.
//

import UIKit
protocol LocationActions: class {
    func didTapAllow()
}
class LocationViewController: UIViewController {
    @IBOutlet weak var locationView: LocationView!
    weak var delegate: LocationActions?

    var locationService : LocationService?
    

    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            locationView.didTapAllow = {
                self.delegate?.didTapAllow()
            }
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
    
        
}
