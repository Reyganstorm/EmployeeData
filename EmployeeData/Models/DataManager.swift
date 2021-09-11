//
//  DataManager.swift
//  EmployeeData
//
//  Created by Руслан Штыбаев on 11.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var names = [
        "John", "Aaron", "Tim", "Ted", "Steven",
        "Ruslan", "Tarnum", "Oleg", "Dmitriy", "Fafnir"
    ]
    var surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth", "Jankins",
        "Kurosaky", "Shtybaev", "Oak", "Loveman", "Stagger"
    ]
    var emails = [
        "hjkdf@gmail.com", "kkkkd@gmail.com", "12345@gmail.com", "plkj@gmail.com",
        "plma@gmail.com", "esfirev@gmail.com", "hurrah@gmail.com", "fully@gmail.com",
        "gummy@gmail.com", "beeeerses@gmail.com"
    ]
    var phoneNumbers = [
        "123456", "654321", "836745", "000000", "999999",
        "777777", "555555", "333333", "232323", "908070"
    ]
    
    private init() {}
}
