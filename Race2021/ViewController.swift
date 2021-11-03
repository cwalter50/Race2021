//
//  ViewController.swift
//  Race2021
//
//  Created by Christopher Walter on 11/1/21.
//

import UIKit

class ViewController: UIViewController
{
    
    var carAImageView = CarImageView(theCar: Car())

    var carBImageView = CarImageView(theCar: Car())
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // customize CarA...
        let carA = Car(theName: "car_green_1", theLane: 1)
        carAImageView = CarImageView(theCar: carA)
        self.view.addSubview(carAImageView)
        
        let carB = Car(theName: "car_blue_1", theLane: 2)
        carBImageView = CarImageView(theCar: carB)
        self.view.addSubview(carBImageView)
        
    }
    
    func animateCar(theView: CarImageView)
    {
        UIView.animate(withDuration: theView.car.speed, animations: {
            
            theView.center = CGPoint(x: theView.center.x, y: -100)
            
        }, completion: {
            action in
            
            theView.resetSpeedAndPosition()
            
        })
    }
    

    @IBAction func startButtonPressed(_ sender: UIButton)
    {
        animateCar(theView: carAImageView)
        animateCar(theView: carBImageView)
        
        if carAImageView.car.speed < carBImageView.car.speed
        {
            // car A wins
        }
        
        
        
    }
    
}

