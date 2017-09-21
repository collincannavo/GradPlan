//
//  UserController.swift
//  GradPlan
//
//  Created by Collin Cannavo on 9/21/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import Foundation
import CoreData

class UserController {
    
    let shared = UserController()
    
    private let userKey = "user"
    
    var user: [User] {
        let request: NSFetchRequest<User> = User.fetchRequest()
        
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
    
    // CRUD
    
    func createUser(withName name: String, lastName: String, email: String, password: String, schoolName: String) {
        
        _ = User(firstName: name, lastName: lastName, email: email, password: password, schoolName: schoolName)
        
    }

    func delete(user: User) {
        
        saveToPersistentStore()
        
    }
    
    func saveToPersistentStore() {
        let moc = CoreDataStack.context
        
        do {
            try moc.save()
        } catch {
            NSLog("There was an error saving the user to persistent store: \(error.localizedDescription)")
        }
    }
    
}
