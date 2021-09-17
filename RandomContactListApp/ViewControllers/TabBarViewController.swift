//
//  TabBarViewController.swift
//  RandomContactListApp
//
//  Created by Михаил Мезенцев on 13.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewControllers()
    }
    
    private func setUpViewControllers() {
        guard let controllers = viewControllers else { return }
        
        for controller in controllers {
            guard let navigationVC = controller as? UINavigationController else {
                return
            }
            
            if let contactListVC = navigationVC.topViewController as?
                ContactListViewController {
                contactListVC.contacts = contactList
            }
            
            if let detailedContactListVC = navigationVC.topViewController as?
                DetailedContactListViewController {
                detailedContactListVC.contacts = contactList
            }
        }
    }
}
