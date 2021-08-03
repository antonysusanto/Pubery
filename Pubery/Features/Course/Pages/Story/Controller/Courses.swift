//
//  Courses.swift
//  Pubery
//
//  Created by Antony Susanto on 01/08/21.
//

import UIKit

enum Courses {
	case C1_Men, C2_AwalMenstruasi
	
	static func getPhysicalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.value(forKey: "selectedGender") as? String {
			if (gender == "male"){
				return [C1_Men_Pages.home]
			}
			else if (gender == "female"){
				return [C1_Men_Pages.home]
			}
		}
		//general
		return [C1_Men_Pages.home]
	}
	
	static func getMentalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.value(forKey: "selectedGender") as? String {
			if (gender == "male"){
				return [C1_Men_Pages.home]
			}
			else if (gender == "female"){
				return [C1_Men_Pages.home]
			}
		}
		//general
		return [C1_Men_Pages.home]
	}
	
	func getCourse() -> [[Any]] {
		switch self {
		case .C1_Men:
			return C1_Men_Pages.pages
		case .C2_AwalMenstruasi:
			return C1_Men_Pages.pages
		}

	}
	
	func getCourseDetail() -> CourseDetail {
		switch self {
		case .C1_Men:
			return C1_Men_Pages.detail
		default:
			return C1_Men_Pages.detail
		}
	}
	
	func getCourseIntroduction() -> CourseIntroduction {
		switch self {
		case .C1_Men:
			return C1_Men_Pages.introduction
		default:
			return C1_Men_Pages.introduction
		
		}
	}
	
	func getContent() -> CourseContent {
		switch self {
		case .C1_Men:
			return C1_Men_Pages.content
		default:
			return C1_Men_Pages.content
		
		}
	}


}
