//
//  SecondTableViewController.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 14.09.2021.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    var people: [Employee] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        phoneNumberLabel.text = "1"
//        emailAdress.text = "1"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        people[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForSecondTV", for: indexPath)
        
        let person = people[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.email
        default:
            content.text = person.phoneNumber
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
}
