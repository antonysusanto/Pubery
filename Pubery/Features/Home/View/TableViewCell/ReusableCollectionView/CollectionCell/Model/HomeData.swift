//
//  HomeData.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import Foundation
import UIKit

struct HomeData {
    static var changesModel: ChangeModel{
        get{
            return
                ChangeModel(responses: [
					Change(typeOfChanges: "Physical Changes", materialChanges: Courses.getPhysicalCourses()),
                    Change(typeOfChanges: "Emotion Changes", materialChanges: Courses.getMentalCourses())
                ])
            
        }
    }
}
