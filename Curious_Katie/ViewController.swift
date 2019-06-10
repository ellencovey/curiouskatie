//
//  ViewController.swift
//  Curious_Katie
//
//  Created by Ellen Covey on 10/06/2019.
//  Copyright © 2019 Ellen Covey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let listOfPeople = Utility.pickPeople()
        
        // print introductions
        for eachPerson in listOfPeople {
            print(eachPerson.introduce())
        }
        
        // comparing people's interests and printing differences
        for (idx, seeker) in listOfPeople.enumerated() {
            for (index, potentialPartner) in listOfPeople.enumerated() {
                if index > idx {
                    let interestsA = seeker.interests.map { $0.title }
                    let interestsB = potentialPartner.interests.map { $0.title }
                    var difference = interestsA.difference(from: interestsB)
                    if difference.count > 1 && difference.count != 0 {
                        var newDifference = difference
                        _ = newDifference.popLast()
                        let differenceString = newDifference.joined(separator:", ")
                        print("\(seeker.name) and \(potentialPartner.name) could talk about \(differenceString) and \(difference[difference.count - 1]).")
                    }
                    else if difference.count == 1 {
                        let differenceString = difference.joined(separator:", ")
                        print("\(seeker.name) and \(potentialPartner.name) could talk about \(differenceString).")
                    }
                    else if difference.count == 0 && seeker.name != potentialPartner.name {
                        print("\(seeker.name) and \(potentialPartner.name) don't have anything to talk about.")
                    }
                }
            }
        }
    }
}
