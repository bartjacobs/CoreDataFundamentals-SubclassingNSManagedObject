//
//  Item+CoreDataProperties.swift
//  Core Data
//
//  Created by Bart Jacobs on 31/01/16.
//  Copyright © 2016 Bart Jacobs. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var completed: Bool
    @NSManaged var createdAt: NSTimeInterval
    @NSManaged var name: String?
    @NSManaged var list: List?

}
