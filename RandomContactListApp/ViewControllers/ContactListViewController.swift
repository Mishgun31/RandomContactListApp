//
//  ContactListViewController.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 02.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contacts: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactCardVC = segue.destination as? ContactCardViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactCardVC.contact = contacts[indexPath.row]
    }
}
