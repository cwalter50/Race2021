//
//  ViewController.swift
//  Race2021
//
//  Created by Christopher Walter on 11/1/21.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func startButtonPressed(_ sender: UIButton)
    {
        let carA = Car()
        print(carA.name)
        print(carA.speed)
        carA.getRandomSpeed()
        print(carA.speed)
        
        let carB = Car(theName: "car_blue_1", theLane: 2)
        print(carB.name)
        print(carB.speed)
        
        
        
    }
    
}

