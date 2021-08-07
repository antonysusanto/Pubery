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
					Change(typeOfChanges: "Fisik dan Reproduksi", materialChanges: Courses.getPhysicalCourses()),
                    Change(typeOfChanges: "Sosial dan Emosi", materialChanges: Courses.getMentalCourses())
                ])
            
        }
    }
}
