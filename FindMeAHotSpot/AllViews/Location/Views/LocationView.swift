//
//  LocationView.swift
//  FindMeAHotSpot
//
//  Created by Mohammad Farzane on 2019-03-15.
//  Copyright © 2019 ShahinFarzane. All rights reserved.
//

import UIKit

@IBDesignable class LocationView: Base {

    @IBOutlet weak var allowButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!
    
    var didTapAllow: (() -> Void)?
    
    @IBAction func allowAction(_ sender: UIButton) {
        didTapAllow?()
    }
    
    @IBAction func denyAction(_ sender: UIButton) {
        
    }

}
