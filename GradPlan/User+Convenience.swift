//
//  User+Convenience.swift
//  GradPlan
//
//  Created by Collin Cannavo on 9/18/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import Foundation
import CoreData

extension User {
    
    convenience init(firstName: String, lastName: String, email: String, password: String, schoolName: String, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.schoolName = schoolName
        
    }
    
}
