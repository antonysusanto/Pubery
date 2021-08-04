//
//  StoryAnimatedImages.swift
//  Pubery
//
//  Created by Antony Susanto on 04/08/21.
//

import UIKit

class StoryAnimatedImages: CustomConstraint {
	var imageNames: [String]
	var interval: CGFloat
	
	init(imageNames: [String], interval:CGFloat, padding: UIEdgeInsets, size: CGSize) {
		self.imageNames = imageNames
		self.interval = interval
		super.init(padding: padding, size: size)
	}
	
	func create(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int) -> UIImageView{
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		
		var images: [UIImage] = []
		for i in 0..<imageNames.count {
			images.append(UIImage(named: imageNames[i])!)
		}
		imageView.animationImages = images
		imageView.animationDuration = 0.5
		imageView.startAnimating()
		
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
