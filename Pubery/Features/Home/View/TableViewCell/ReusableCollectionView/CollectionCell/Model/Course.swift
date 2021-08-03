//
//  Course.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import Foundation
import UIKit

struct Course {
    let courseName: String
    let image: UIImage
    let checkListImage: UIImage
}

struct Change {
    let typeOfChanges: String
    let materialChanges: [CourseHome]
}

struct ChangeModel {
    let responses: [Change]
}
