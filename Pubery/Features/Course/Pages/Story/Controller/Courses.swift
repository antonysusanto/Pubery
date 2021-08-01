//
//  Courses.swift
//  Pubery
//
//  Created by Antony Susanto on 01/08/21.
//

import UIKit

enum Courses {
	case C1_Men
	
	func getCourse() -> [[Any]] {
		switch self {
		case .C1_Men:
			return C1_Men_Pages.pages
		}
	}
}


