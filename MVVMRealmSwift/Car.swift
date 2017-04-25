//
//  Car.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 25/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import RealmSwift

class Car: Object {
    dynamic var id   = ""
    dynamic var name = ""
    dynamic var buyingDate = NSDate()
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
