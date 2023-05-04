//
//  Workout+CoreDataProperties.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 4.05.2023.
//
//

import Foundation
import CoreData


extension Workout {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Workout> {
        return NSFetchRequest<Workout>(entityName: "Workout")
    }

    @NSManaged public var exercises: [String]?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension Workout : Identifiable {

}
