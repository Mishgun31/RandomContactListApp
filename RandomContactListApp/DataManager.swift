//
//  DataManager.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 01.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private let firstNames = ["John", "Aaron", "Tim", "Ted", "Steven"]
    private let lastNames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    private let phoneNumbers = ["+12345", "+234567", "+3596978", "+83999", "+89688"]
    
    private init() {}
    
    func getPersonList() -> [Person] {
        var people: [Person] = []
        
        for name in firstNames {
            let person = Person(
                firstName: name,
                lastName: lastNames.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""
            )
            
            if !people.contains(person) {
                people.append(person)
            }
        }
        
        return people
    }
}
