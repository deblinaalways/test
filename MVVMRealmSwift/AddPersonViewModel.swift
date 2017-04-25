//
//  AddPersonViewModel.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 25/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import RealmSwift

class AddPersonViewModel {
    var firstName: String
    var lastName: String
    var phoneNumber: Int
    var cars: Set<Car>
    
    init(nameText: String, phoneNumber: String, cars: Set<Car>) {
        self.firstName = nameText.components(separatedBy: .whitespaces)[0]
        self.lastName = nameText.components(separatedBy: .whitespaces)[1]
        self.phoneNumber = Int(phoneNumber)!
        self.cars = cars
        savePersonData()
    }
    
    private func savePersonData() {
        let person = Person()
        person.personID = NSUUID().uuidString
        person.firstName = firstName
        person.lastName = lastName
        person.phoneNumber = phoneNumber
    }
    
}
