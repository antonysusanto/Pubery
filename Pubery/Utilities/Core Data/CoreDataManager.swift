//
//  CoreDataManager.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 02/08/21.
//

import Foundation
import UIKit
import CoreData

class CoreDataManager {
    
    //MARK: - Function for core data
    
    // References to managed object context
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // Data for the entity
    var childrens = [Children]()
    
    // This function use to fetch the Children
    func fetchChildren() -> [Children] {
        do {
            let request = Children.fetchRequest() as NSFetchRequest<Children>
            request.returnsObjectsAsFaults = false
            childrens = try context.fetch(request)
            
        } catch {
            print("Get all children error \(error)")
        }
        return childrens
        
    }
    
    //This function use to create the Children
    func createChildren(name: String, gender:String) {
        let newChildren = Children(context: self.context)
        newChildren.name = name
        newChildren.gender = gender
        
        do {
            try self.context.save()
        } catch {
            print("Create Children error \(error)")
        }
        
    }
    
    //This function use to delete the Children profile
    func deleteChildren(data:Children) {
        self.context.delete(data)
        do {
            try self.context.save()
        } catch {
            print("Delete Children error \(error)")
        }
    }
    
    //This function use to update the children profile
    func updateChildren(newName: String, newGender: String, replaceData: Children) {
        replaceData.name = newName
        replaceData.gender = newGender
        print(replaceData)
        do {
            try self.context.save()
        } catch {
            print("Update Children error \(error)")
        }
    }
}
