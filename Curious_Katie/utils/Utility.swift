//
//  Utility.swift
//  Curious_Katie
//
//  Created by Ellen Covey on 10/06/2019.
//  Copyright © 2019 Ellen Covey. All rights reserved.
//

import Foundation

struct Utility {
    // method to generate array of all possible interests
    static func generateAllInterests() -> [Interest] {
        var allInterests: [Interest] = []
        
        let interest01 = Interest(title: "climbing", difficulty: .hard)
        allInterests.append(interest01)
        let interest02 = Interest(title: "knitting", difficulty: .easy)
        allInterests.append(interest02)
        let interest03 = Interest(title: "kayaking", difficulty: .intermediate)
        allInterests.append(interest03)
        let interest04 = Interest(title: "snowboarding", difficulty: .hard)
        allInterests.append(interest04)
        let interest05 = Interest(title: "kickboxing", difficulty: .intermediate)
        allInterests.append(interest05)
        let interest06 = Interest(title: "cycling", difficulty: .easy)
        allInterests.append(interest06)
        let interest07 = Interest(title: "skydiving", difficulty: .hard)
        allInterests.append(interest07)
        let interest08 = Interest(title: "surfing", difficulty: .intermediate)
        allInterests.append(interest08)
        let interest09 = Interest(title: "board games", difficulty: .easy)
        allInterests.append(interest09)
        let interest10 = Interest(title: "movies", difficulty: .easy)
        allInterests.append(interest10)
        
        return allInterests
    }
    
    // method to generate all people
    static func generateAllPeople() -> [Person] {
        var allPeople: [Person] = []
        
        let person01 = Person(name: "Tom", age: 26)
        allPeople.append(person01)
        let person02 = Person(name: "Chen", age: 32)
        allPeople.append(person02)
        let person03 = Person(name: "Maria", age: 34)
        allPeople.append(person03)
        let person04 = Person(name: "Rakim", age: 29)
        allPeople.append(person04)
        let person05 = Person(name: "Beth", age: 20)
        allPeople.append(person05)
        let person06 = Person(name: "Micah", age: 52)
        allPeople.append(person06)
        let person07 = Person(name: "Itoiz", age: 21)
        allPeople.append(person07)
        let person08 = Person(name: "Santiago", age: 49)
        allPeople.append(person08)
        let person09 = Person(name: "Sophie", age: 38)
        allPeople.append(person09)
        let person10 = Person(name: "Fred", age: 41)
        allPeople.append(person10)
        let person11 = Person(name: "Camille", age: 30)
        allPeople.append(person11)
        let person12 = Person(name: "Sonia", age: 26)
        allPeople.append(person12)
        
        return allPeople
    }
    
    // method to shuffle all people and pick random amount - call in view controller (public function)
    static func pickPeople() -> [Person] {
        let pool = generateAllPeople().shuffled()
        let maximum = pool.count
        return Array(pool.prefix(Int.random(in: 2...maximum)))
    }
    
    // method to shuffle interest options and pick random amount
    static func pickInterests() -> [Interest] {
        let pool = generateAllInterests().shuffled()
        let maximum = pool.count
        return Array(pool.prefix(Int.random(in: 1...maximum)))
    }
    
}
