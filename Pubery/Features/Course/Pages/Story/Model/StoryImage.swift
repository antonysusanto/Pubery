//
//  StoryImage.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

class StoryImage: CustomConstraint {
	var imageName: String
	
	init(imageName: String, padding: UIEdgeInsets, size: CGSize) {
		self.imageName = imageName
		super.init(padding: padding, size: size)
	}
}
