//
//  Car.swift
//  Race2021
//
//  Created by Christopher Walter on 11/1/21.
//

import Foundation


class Car
{
    // Properties
    var name: String
    var speed: Double
    var lane: Int
    
    // Initializers
    init()
    {
        self.name = "car_black_1"
        self.speed = 3.2
        self.lane = 1
    }
    
    init(theName: String, theLane: Int)
    {
        self.name = theName
        self.lane = theLane
        self.speed = 3.3
        getRandomSpeed()
    }
    
    // methods
    func getRandomSpeed()
    {
        self.speed = Double.random(in: 2...5)
    }
    
}
