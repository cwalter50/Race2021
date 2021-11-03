//
//  CarImageView.swift
//  Race2021
//
//  Created by Christopher Walter on 11/1/21.
//

import UIKit

class CarImageView: UIImageView
{
    
    var car: Car
    
    init(theCar: Car)
    {
        self.car = theCar
        super.init(image: UIImage(named: theCar.name))
        
        let screenHeight = UIScreen.main.bounds.height
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}


