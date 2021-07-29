//
//  Progress+CoreDataProperties.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 27/07/21.
//
//

import Foundation
import CoreData


extension Progress {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Progress> {
        return NSFetchRequest<Progress>(entityName: "Progress")
    }

    @NSManaged public var courseName: String?
    @NSManaged public var isCompleted: Bool
    @NSManaged public var children: Children?

}

extension Progress : Identifiable {

}
