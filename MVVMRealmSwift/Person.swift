//
//  Person.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 25/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import RealmSwift

class Person: Object {
    
    dynamic var personID    = ""
    dynamic var firstName   = ""
    dynamic var lastName    = ""
    dynamic var phoneNumber = 0
    let cars = List<Car>()
    
    override class func primaryKey() -> String? {
        return "personID"
    }
}
