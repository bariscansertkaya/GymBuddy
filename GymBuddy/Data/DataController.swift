//
//  DataController.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 25.04.2023.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "DataModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Success")
        }
        catch {
            print("Error")
        }
    }
    
    func addProgress(name:String, weight:String, reps:String, context: NSManagedObjectContext) {
        let progress = Progress(context: context)
        progress.id = UUID()
        progress.name = name
        progress.weight = weight
        progress.reps = reps
        
        save(context: context)
    }
    
    func editProgress(progress:Progress,name:String, weight:String, reps:String, context: NSManagedObjectContext) {
        progress.name = name
        progress.weight = weight
        progress.reps = reps
        
        save(context: context)
    }
    
}
