//
//  CourseHome.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

class CourseHome {
	var id:Courses
	var title:String
	var imageDetails: [String]
	var checklist:Bool
	
	init(id:Courses, title:String, imageDetails:[String]) {
		self.id = id
		self.title = title
		self.imageDetails = imageDetails
		self.checklist = true //todo check ke userdefault
	}
}
