//
//  College.swift
//  CollegeProfileBuilder
//
//  Created by Balgard on 2/1/17.
//  Copyright © 2017 Balgard. All rights reserved.
//

import UIKit

class College: NSObject {
    var name = String()
    var location = String()
    var numberOfStudents = Int()
    var image = Data()
    
    convenience init(name: String, location: String, numberOfStudents: Int, image: Data) {
        self.init()
        self.name = name
        self.location = location
        self.numberOfStudents = numberOfStudents
        self.image = image
    }
}
