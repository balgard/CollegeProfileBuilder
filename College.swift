//
//  College.swift
//  CollegeProfileBuilder
//
//  Created by Balgard on 2/1/17.
//  Copyright © 2017 Balgard. All rights reserved.
//

import UIKit
import RealmSwift

class College: Object {
    dynamic var name = String()
    dynamic var location = String()
    dynamic var numberOfStudents = Int()
    dynamic var image = Data()
    
    convenience init(name: String, location: String, numberOfStudents: Int, image: Data) {
        self.init()
        self.name = name
        self.location = location
        self.numberOfStudents = numberOfStudents
        self.image = image
    }
}
