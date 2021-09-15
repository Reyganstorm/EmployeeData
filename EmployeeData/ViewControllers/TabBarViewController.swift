//
//  TabBarViewController.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 15.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    

    private func setupViewControllers() {
        let person = Employee.getContacts()
        let contactListVC = viewControllers?.first as! ViewController
        let sectionVC = viewControllers?.last as! SecondTableViewController
        
        contactListVC.people = person
        sectionVC.people = person
    }

}
