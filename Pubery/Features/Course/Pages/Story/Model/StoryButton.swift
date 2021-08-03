//
//  StoryButton.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

class StoryButton: CustomConstraint {
	var title: String
	var destination: String
	
	init(title: String, destination: String, padding: UIEdgeInsets, size: CGSize) {
		self.title = title
		self.destination = destination
		super.init(padding: padding, size: size)
	}
}

class CustomStoryButton: UIButton {
	var destination: String?
}
