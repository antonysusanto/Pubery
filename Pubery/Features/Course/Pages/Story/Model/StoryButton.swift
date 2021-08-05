//
//  swift
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
	
	func create(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int, navigator:UINavigationController?, selectedCourse: Courses?) -> CustomStoryButton{
		let button = CustomStoryButton()
		button.setTitle(title, for: .normal)
		button.backgroundColor = UIColor(red: 202/255, green: 82/255, blue: 82/255, alpha: 1)
		button.layer.cornerRadius = 14
		button.destination = destination
		button.navigator = navigator
		button.selectedCourse = selectedCourse
		button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		elementsContainer.addSubview(button)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		if (elementIndex == 0 && lastElementIndex == 0) {
			button.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: elementsContainer.bottomAnchor, trailing: elementsContainer.trailingAnchor, padding: padding, size: size)
		} else if (elementIndex == 0) {
			button.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: nil, trailing: elementsContainer.trailingAnchor, padding: padding, size: size)
		} else {
			let previousElement = elements[elementIndex-1]
			button.setConstraint(top: previousElement.bottomAnchor, leading: elementsContainer.leadingAnchor, bottom: nil, trailing: elementsContainer.trailingAnchor, padding: padding, size: size)
		}
		
		return button
	}
	
	@objc func buttonAction(sender: CustomStoryButton) {
		if (sender.destination == "CourseEnd") {
			let storyBoard: UIStoryboard = UIStoryboard(name: sender.destination!, bundle: nil)
			let vc = storyBoard.instantiateViewController(withIdentifier: sender.destination!) as! CourseEndViewController
			vc.selectedCourse = sender.selectedCourse
			sender.navigator?.pushViewController(vc, animated: false)
		} else {
			let storyBoard: UIStoryboard = UIStoryboard(name: sender.destination!, bundle: nil)
			let vc = storyBoard.instantiateViewController(withIdentifier: sender.destination!)
			sender.navigator?.pushViewController(vc, animated: false)
		}
	}
}

class CustomStoryButton: UIButton {
	var destination: String?
	var navigator: UINavigationController?
	var selectedCourse: Courses?
}
