//
//  ViewController.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 08.09.2021.
//

import UIKit

class ViewController: UITableViewController {
    
//    private let people = 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Cell index \(indexPath.row)"
        
        return cell
    }
    
    
}

