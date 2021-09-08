//
//  Employee.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 08.09.2021.
//

import Foundation

//class Singleton {
//    static let shared = Singleton()
//}
//
//class DataManager: Singleton {
//    static let example = DataManager()
//
//    struct Employee {
//        let name: String
//        let surname: String
//        var fullName: String {
//            "\(name) \(surname)"
//        }
//        let email: String
//        let phoneNumber: String
//
//        init(name: String, surname: String, email: String, phoneNumber: String) {
//            self.name = name
//            self.surname = surname
//            self.email = email
//            self.phoneNumber = phoneNumber
//        }
//
//
//    }
//
//    // MARK: - Privates Arrays (Proporties)
//    private var names = [
//        "John", "Aaron", "Tim", "Ted", "Steven",
//        "Ruslan", "Tarnum", "Oleg", "Dmitriy", "Fafnir"
//    ]
//    private var surnames = [
//        "Smith", "Dow", "Isaacson", "Pennyworth", "Jankins",
//        "Kurosaky", "Shtybaev", "Oak", "Loveman", "Stagger"
//    ]
//    private var emails = [
//        "hjkdf@gmail.com", "kkkkd@gmail.com", "12345@gmail.com", "plkj@gmail.com",
//        "plma@gmail.com", "esfirev@gmail.com", "hurrah@gmail.com", "fully@gmail.com",
//        "gummy@gmail.com", "beeeerses@gmail.com"
//    ]
//    private var phoneNumbers = [
//        "123456", "654321", "836745", "000000", "999999",
//        "777777", "555555", "333333", "232323", "908070"
//    ]
//
//    var persons: [Employee] = []
//
//    // MARK: - Arrays Mixing Method
//    func getRandomPeople() -> [Employee] {
//
//        for _ in 1...10 {
//
//            let randomNameIndex = Int.random(in: 0 ... names.count - 1)
//            let randomSurnameIndex = Int.random(in: 0 ... names.count - 1)
//            let randomEmailIndex = Int.random(in: 0 ... names.count - 1)
//            let randomPhoneNumberIndex = Int.random(in: 0 ... names.count - 1)
//
//            let employee = Employee(
//                name: names.remove(at: randomNameIndex),
//                surname: surnames.remove(at: randomSurnameIndex),
//                email: emails.remove(at: randomEmailIndex),
//                phoneNumber: phoneNumbers.remove(at: randomPhoneNumberIndex)
//            )
//            persons.append(employee)
//        }
//        return persons
//    }
//}


public struct Employee {
        let name: String
        let surname: String
        var fullName: String {
            "\(name) \(surname)"
        }
        let email: String
        let phoneNumber: String

        init(name: String, surname: String, email: String, phoneNumber: String) {
            self.name = name
            self.surname = surname
            self.email = email
            self.phoneNumber = phoneNumber
        }
}

class DataManager {
    public var persons: [Employee] = []
    
     //MARK: - Privates Arrays (Proporties)
        private var names = [
            "John", "Aaron", "Tim", "Ted", "Steven",
            "Ruslan", "Tarnum", "Oleg", "Dmitriy", "Fafnir"
        ]
        private var surnames = [
            "Smith", "Dow", "Isaacson", "Pennyworth", "Jankins",
            "Kurosaky", "Shtybaev", "Oak", "Loveman", "Stagger"
        ]
        private var emails = [
            "hjkdf@gmail.com", "kkkkd@gmail.com", "12345@gmail.com", "plkj@gmail.com",
            "plma@gmail.com", "esfirev@gmail.com", "hurrah@gmail.com", "fully@gmail.com",
            "gummy@gmail.com", "beeeerses@gmail.com"
        ]
        private var phoneNumbers = [
            "123456", "654321", "836745", "000000", "999999",
            "777777", "555555", "333333", "232323", "908070"
        ]
}

extension DataManager {
    
    public func getRandomPeople() -> [Employee] {
    
            for _ in 1...10 {
    
                let randomNameIndex = Int.random(in: 0 ... names.count - 1)
                let randomSurnameIndex = Int.random(in: 0 ... names.count - 1)
                let randomEmailIndex = Int.random(in: 0 ... names.count - 1)
                let randomPhoneNumberIndex = Int.random(in: 0 ... names.count - 1)
    
                let employee = Employee(
                    name: names.remove(at: randomNameIndex),
                    surname: surnames.remove(at: randomSurnameIndex),
                    email: emails.remove(at: randomEmailIndex),
                    phoneNumber: phoneNumbers.remove(at: randomPhoneNumberIndex)
                )
                persons.append(employee)
            }
            return persons
        }
}
