//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]

    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String]{
        var peopleWhoLikeFlavor: [String] = []
        for (person, kind) in favoriteFlavorsOfIceCream{
            if kind == flavor {
                peopleWhoLikeFlavor.append(person)
            }
        }
        return peopleWhoLikeFlavor
    }
    
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var count = 0
        for (person, kind) in favoriteFlavorsOfIceCream{
            if kind == flavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if favoriteFlavorsOfIceCream[person] != nil{
        return favoriteFlavorsOfIceCream[person]
        } else{
            return nil
        }
       
    }
   
    
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        let people = favoriteFlavorsOfIceCream.keys
        if  people.contains(person){
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        let people = favoriteFlavorsOfIceCream.keys
        if people.contains(person){
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
   
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        let numberOfPeople = favoriteFlavorsOfIceCream.count
        return numberOfPeople
    }
    
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        let people = favoriteFlavorsOfIceCream.keys
        
        if people.contains(person) {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String{
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = ""
        for name in allNames {
            if allNames.last == name{
                if let flavor = favoriteFlavorsOfIceCream[name]{
                 list.append("\(name) likes \(flavor)")
                }
            } else {
                if let flavor = favoriteFlavorsOfIceCream[name]{
                list.append("\(name) likes \(flavor)\n")
                }
            }
        }
     
       return list
    }
    
    
    
    
    
    
    
    

}
