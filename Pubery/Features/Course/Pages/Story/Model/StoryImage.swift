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
	
	func create(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int) -> UIImageView{
		let imageView = UIImageView()
		imageView.image = UIImage(named: imageName)
		imageView.contentMode = .scaleAspectFit
		
		elementsContainer.addSubview(imageView)
		
		imageView.translatesAutoresizingMaskIntoConstraints = false
		
		if (elementIndex == 0) {
			imageView.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: elementsContainer.bottomAnchor, trailing: elementsContainer.trailingAnchor, padding: padding, size: size)
		} else {
			let previousElement = elements[elementIndex-1]
			imageView.setConstraint(top: previousElement.bottomAnchor, leading: elementsContainer.leadingAnchor, bottom: elementIndex == lastElementIndex ? elementsContainer.bottomAnchor : nil, trailing: elementsContainer.trailingAnchor, padding: padding, size: size)
		}
		
		return imageView
	}
}
