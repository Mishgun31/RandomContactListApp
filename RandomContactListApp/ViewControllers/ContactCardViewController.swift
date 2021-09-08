//
//  ContactCardViewController.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 02.09.2021.
//

import UIKit

class ContactCardViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contact.fullName
        phoneNumberLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
