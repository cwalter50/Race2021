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
        
        let frame = CGRect(x: 75 * car.lane, y: Int(screenHeight-100), width: 50, height: 100)
        self.frame = frame
        
    }
    
    func resetSpeedAndPosition()
    {
        self.center = CGPoint(x: self.center.x, y: UIScreen.main.bounds.height - 100)
        self.car.getRandomSpeed()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}


