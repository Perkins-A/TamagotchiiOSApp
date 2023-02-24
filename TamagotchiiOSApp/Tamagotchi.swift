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
        self.isAlive = true
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
Age: \(age) days
Happiness: \(happiness)
Hunger: \(hunger)
Weight: \(weight)
\(isAlive)
"""
    }
    
    // SETTERS
    mutating func becomeSick() {
        isSick = true
    }
    
    mutating func growUp() {
        age += 1
    }
    
    mutating func sleep() {
        happiness += 8
        isSick = false
        growUp()
        weight -= 1
    }
    
    mutating func becomeHungry() {
        hunger += 1
    }
    
    mutating func becomeUnhappy() {
        if weight >= 69 {
            happiness = -2
        }
        if isSick == true {
            happiness -= 5
        }
        happiness -= 1
    }
    
    mutating func die() {
        isAlive = false
    }
    
    mutating func giveMedicine() {
        isSick = false
    }
    
    mutating func checkIfAlive() -> String {
        if weight >= 100 {
            die()
            return "obesity"
        } else if happiness <= -5 {
            die()
            return "unhappiness"
        } else if age >= 2 {
            die()
            return "old age"
        } else if isSick == true {
            die()
            return "sickness"
        } else if hunger > 20 {
            die()
            return "hunger"
        } else {
            return "nothing"
        }
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
