//
//  Person.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 01.09.2021.
//

struct Person: Equatable {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    var email: String?
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
