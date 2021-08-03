//
//  CourseHome.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

class CourseHome {
	var id:Courses
	var title:String
	var imageName:String
	var checklist:Bool
	
	init(id:Courses, title:String, imageName:String) {
		self.id = id
		self.title = title
		self.imageName = imageName
		self.checklist = true //todo check ke userdefault
	}
}
