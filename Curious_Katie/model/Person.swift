//
//  Person.swift
//  Curious_Katie
//
//  Created by Ellen Covey on 10/06/2019.
//  Copyright © 2019 Ellen Covey. All rights reserved.
//

import Foundation

struct Person {
    // properties
    var name: String
    var age: Int
    var interests = Utility.pickInterests()
    
    // method to introduce people - call in view controller (public)
    func introduce() -> String {
        // greeting, name and age
        let greetings = ["Hi", "Hello", "Hey"]
        var introduction = "\(greetings.randomElement()!), I'm \(name), and I'm \(age) years old."
        
        introduction += " I'm interested in"
        
        // different grammar & punctuation options
        for (idx, eachInterest) in interests.enumerated() {
            if interests.count == 1 {
                introduction += " \(eachInterest.title)."
            }
            else if idx == interests.endIndex-1 {
                introduction += " and \(eachInterest.title)."
            }
            else if idx == interests.endIndex-2 {
                introduction += " \(eachInterest.title)"
            }
            else {
                introduction += " \(eachInterest.title),"
            }
        }
        
        return introduction
    }
    
    // initialisers
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
