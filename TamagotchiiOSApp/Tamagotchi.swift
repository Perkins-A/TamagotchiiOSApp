//
//  Tamagotchi.swift
//  TamagotchiiOSApp
//
//  Created by Perkins, Alexander (ABH) on 14/01/2023.
//

import Foundation

struct Tamagotchi {
    // ATTRIBUTES
    private let name: String
    private var happiness: Int
    private var hunger: Int
    private var weight: Double
    private var age: Int
    private var isSick: Bool
    private var isAlive: Bool
    
    // CONSTRUCTOR
    init(_ name: String) {
        self.name = name
        self.happiness = 5
        self.hunger = 5
        self.weight = 10.0
        self.age = 0
        self.isSick = false
    }
    
    
    // GETTERS
    func getHunger() -> Int {
        return self.hunger
    }
    func getHappiness() -> Int {
        return self.happiness
    }
    func getWeight() -> Double {
        return self.weight
    }
    func getAge() -> Int {
        return self.age
    }
    func isItSick() -> Bool {
        return self.isSick
    }
    func getName() -> String {
        return self.name
    }
    func isItAlive() -> Bool {
        return self.isAlive
    }
    
    func displayInfo() -> String {
        return """
Happiness: \(happiness)
Hunger: \(hunger)
Weight: \(weight)
"""
    }
    
    // SETTERS
    mutating func becomeSick() {
        isSick = true
    }
    
    mutating func growUp() {
        age += 1
    }
    
    mutating func die() {
        isAlive = false
    }
    
    mutating func checkIfAlive() {
        i
    }
    
    mutating func eatSnack() {
        if hunger >= 2 {
            self.hunger -= 2
        } else {
            self.hunger = 0
        }
        if weight <= 99 {
            self.weight += 1
        } else {
            self.weight = 100
        }
        if happiness <= 8 {
            self.happiness += 2
        } else {
            self.happiness = 10
        }
    }
    
    mutating func eatMeal() {
        if hunger >= 5 {
            self.hunger -= 5
        } else {
            self.hunger = 0
        }
        if weight <= 98 {
            self.weight += 2
        } else {
            self.weight = 100
        }
        if happiness <= 8 {
            self.happiness += 2
        } else {
            self.happiness = 10
        }
    }
    
    
}
