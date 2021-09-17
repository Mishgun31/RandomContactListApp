//
//  Person.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 01.09.2021.
//

struct Person {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    var email: String {
        firstName + lastName + "@gmail.com"
    }
}

extension Person {
    
    static func getContactList() -> [Person] {
        var people: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(firstNames.count, lastNames.count, phoneNumbers.count)
        
        for index in 0..<iterationCount {
            let person = Person(firstName: firstNames[index],
                                lastName: lastNames[index],
                                phoneNumber: phoneNumbers[index])
            
            people.append(person)
        }
        
        return people
    }
}
