//
//  PlanController.swift
//  GradPlan
//
//  Created by Collin Cannavo on 9/21/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import Foundation
import CoreData

class PlanController {
    
    static let shared = PlanController()
    
    private let planKey = "plan"
    
    var plan: [Plan] {
        let request: NSFetchRequest<Plan> = Plan.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
    
    //CRUD functions
    
    func createPlan(withTitle title: String) {
        
        _ = Plan(title: title)
        
        saveToPersistentStore()
        
    }
    
    func deletePlan(plan: Plan) {
        
        let moc = CoreDataStack.context
        
        moc.delete(plan)
        
        saveToPersistentStore()
    
    }
    
    func saveToPersistentStore() {
        
        let moc = CoreDataStack.context
        
        do {
            try moc.save()
        } catch {
            NSLog("There was an error saving to the persistent store: \(error.localizedDescription)" )
        }
        
    }
    
}
