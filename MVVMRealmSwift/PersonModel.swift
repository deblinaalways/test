//
//  PersonModel.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 25/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import UIKit

class PersonModel {
    var personID:    String
    var firstName:   String
    var lastName:    String
    var phoneNumber: Int
    var cars:        Set<Car>
    
    init(personID: String, firstName: String, lastName: String, phoneNumber: Int, cars: Set<Car>) {
        self.personID = personID
        self.firstName = firstName
        self.lastName  = lastName
        self.phoneNumber = phoneNumber
        self.cars = cars
    }
}
