//
//  CourseDetail.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

class CourseDetail {
	var category:String
	var title:String
	var age:String
	var imageDetails:[String]
	
	
	init(category:String, title:String, age:String, imageDetails:[String]) {
		self.category = category
		self.title = title
		self.age = age
		self.imageDetails = imageDetails
		
	}
}
