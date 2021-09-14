//
//  SecondTableViewController.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 14.09.2021.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    let people = Employee.getContacts()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        phoneNumberLabel.text = "1"
//        emailAdress.text = "1"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
//    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForSecondTV", for: indexPath)
        //let content = cell.defaultContentConfiguration()
        let person = people[indexPath.row]
        cell.textLabel?.text = "\(person.fullName)"
        //content.ph

        return cell
    }
    
}
