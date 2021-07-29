//
//  Children+CoreDataProperties.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 27/07/21.
//
//

import Foundation
import CoreData


extension Children {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Children> {
        return NSFetchRequest<Children>(entityName: "Children")
    }

    @NSManaged public var name: String?
    @NSManaged public var gender: String?
    @NSManaged public var age: Int64
    @NSManaged public var progress: NSSet?

}

// MARK: Generated accessors for progress
extension Children {

    @objc(addProgressObject:)
    @NSManaged public func addToProgress(_ value: Progress)

    @objc(removeProgressObject:)
    @NSManaged public func removeFromProgress(_ value: Progress)

    @objc(addProgress:)
    @NSManaged public func addToProgress(_ values: NSSet)

    @objc(removeProgress:)
    @NSManaged public func removeFromProgress(_ values: NSSet)

}

extension Children : Identifiable {

}
