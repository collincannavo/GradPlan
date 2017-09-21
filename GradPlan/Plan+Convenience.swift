//
//  Plan+Convenience.swift
//  GradPlan
//
//  Created by Collin Cannavo on 9/18/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import Foundation
import CoreData

extension Plan {

    convenience init(title: String, milestone: String, dueDate: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.milestone = milestone
        self.dueDate = dueDate as NSDate
        self.title = title
    }
    
    convenience init(title: String, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.title = title        
    }
    
}
