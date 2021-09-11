//
//  ViewController.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 08.09.2021.
//

import UIKit

class ViewController: UITableViewController {
    
    let people = Employee.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "track", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = people[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    

//     MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailsVC = segue.destination as? SomeInformationViewController else { return }
        //guard let indexPath = tableView.indexPathForSelectedRow else { return }
       // let person = people[indexPath.row]
    }
}
