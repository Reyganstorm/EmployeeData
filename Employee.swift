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
    var fullName: String {
        "\(name) \(surname)"
    }
    let emailAdress: String
    let phoneNumber: String
}


let names = ["John", "Aaron", "Tim", "Ted", "Steven", "Ruslan", "Tarnum", "Oleg", "Dmitriy", "Fafnir"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins", "Kurosaky", "Shtybaev", "Oak", "Loveman", "Stagger"]
let emails = ["hjkdf@gmail.com", "kkkkd@gmail.com", "12345@gmail.com", "plkj@gmail.com", "plma@gmail.com", "esfirev@gmail.com", "hurrah@gmail.com", "fully@gmail.com", "gummy@gmail.com", "beeeerses@gmail.com"]
let phoneNumbers = ["123456", "654321", "836745", "000000", "999999", "777777", "555555", "333333", "232323", "908070"]


func randomItem(_ array: [String]) -> String {
    var indexes = [Int]()
    if indexes.count == 0
      {
        print("Filling indexes array")
        indexes = Array(0 ..< array.count)
    }
  var randomIndex = Int(arc4random_uniform(UInt32(array.count)))
  let anIndex = array.remove(at: randomIndex)
  return array[anIndex].0;
}

