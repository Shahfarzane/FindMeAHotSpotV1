//
//  Base.swift
//  FindMeAHotSpot
//
//  Created by Mohammad Farzane on 2019-03-15.
//  Copyright © 2019 ShahinFarzane. All rights reserved.
//

import UIKit

@IBDesignable class Base : UIView {
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        self.configure()
        
    
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
        self.configure()
        
    }
    func configure(){
        
    }
    
 
}
