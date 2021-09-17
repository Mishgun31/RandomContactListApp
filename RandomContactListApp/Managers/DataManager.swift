//
//  DataManager.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 01.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let firstNames = ["John", "Aaron", "Tim",
                      "Ted", "Steven", "Elle",
                      "Sharon", "Katrin", "Jennifer"]
    
    let lastNames = ["Smith", "Dow", "Isaacson",
                     "Pennyworth", "Jankins", "Cook",
                     "Aniston", "Smith"]
    
    let phoneNumbers = ["+12345", "+234567", "+3596978",
                        "+83999", "+89688", "+49278",
                        "+16789", "+19998", "+4898998"]
    
    private init() {}
}

//func getPersonList() -> [Person] {
//    var people: [Person] = []
//
//    for name in firstNames {
//        let person = Person(
//            firstName: name,
//            lastName: lastNames.randomElement() ?? "",
//            phoneNumber: phoneNumbers.randomElement() ?? ""
//        )
//
//        if !people.contains(person) {
//            people.append(person)
//        }
//    }
//
//    return people
//}
