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

// MARK:- Equatable methods

extension Person: Equatable {
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return
            lhs.firstName == rhs.firstName ||
            lhs.lastName == rhs.lastName ||
            lhs.phoneNumber == rhs.phoneNumber
    }
}
