//
//  PersonViewModel.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 25/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class PersonViewModel {
    private var person: Person
    var personID: String        { return person.personID }
    var fullName: String        { return person.firstName + " " + person.lastName }
    var phoneNumberText: String { return "\(person.phoneNumber)" }
    var carCount: Int           { return person.cars.count }
    
    init(person: Person) {
        self.person = person
    }
    
}
