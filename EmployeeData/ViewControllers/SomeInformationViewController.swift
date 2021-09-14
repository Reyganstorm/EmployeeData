//
//  SomeInformationViewController.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 09.09.2021.
//

import UIKit

class SomeInformationViewController: UIViewController {
   
    var person: Employee!
    
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber
    
    }
}
