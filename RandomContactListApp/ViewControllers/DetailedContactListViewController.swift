//
//  DetailedContactListViewController.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 06.09.2021.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    
    var contacts: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneAndEmail", for: indexPath)
        let phone = contacts[indexPath.section].phoneNumber
        let email = contacts[indexPath.section].email
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
