//
//  Employee.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 08.09.2021.
//

import Foundation


struct Employee {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
                "\(name) \(surname)"
            }
}

extension Employee {
    static func getContacts() -> [Employee] {
        
        var persons: [Employee] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        for counter in 0 ... names.count - 1 {
            let employee = Employee(
                name: names[counter],
                surname: surnames[counter],
                email: emails[counter],
                phoneNumber: phoneNumbers[counter]
            )
            persons.append(employee)
        }
        return persons
    }
}
