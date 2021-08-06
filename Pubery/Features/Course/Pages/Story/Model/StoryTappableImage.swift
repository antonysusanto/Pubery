//
//  StoryTappableImage.swift
//  Pubery
//
//  Created by Antony Susanto on 06/08/21.
//

import UIKit

class StoryTappableImage: CustomConstraint {
	var texts: [String]
	var imageNames: [String]
	
	init(texts:[String], imageNames: [String], padding: UIEdgeInsets, size: CGSize) {
		self.texts = texts
		self.imageNames = imageNames
		super.init(padding: padding, size: size)
	}
	
	func create(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int) -> UIView{
		
		let view = UIView()
	
		elementsContainer.addSubview(view)
		
		view.translatesAutoresizingMaskIntoConstraints = false
		view.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: elementsContainer.bottomAnchor, trailing: elementsContainer.trailingAnchor, padding: padding, size: size)
		
		let label = UILabel()
		label.text = texts[0]
		label.font = UIFont.boldSystemFont(ofSize: 20)
		label.textAlignment = .center
		label.numberOfLines = 0
		view.addSubview(label)
		
		label.translatesAutoresizingMaskIntoConstraints = false
		label.setConstraint(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10), size: CGSize(width: 0, height: 150))
		
		let imageButton = ImageButton()
		imageButton.setImage(UIImage(named: imageNames[0]), for: .normal)
		imageButton.label = label
		imageButton.tag = 0
		imageButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		view.addSubview(imageButton)
		
		imageButton.translatesAutoresizingMaskIntoConstraints = false
		imageButton.setConstraint(top: label.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 150, left: 50, bottom: 100, right: 50), size: CGSize(width: 0, height: 300))
		
		return view
	}
		
	@objc func buttonAction(sender: ImageButton) {
		if (sender.tag < texts.count-1){
			sender.tag += 1
			
		} else {
			sender.tag = 0
			
		}
		sender.label?.text = texts[sender.tag]
		sender.setImage(UIImage(named: imageNames[sender.tag]), for: .normal)
	}
}

class ImageButton: UIButton {
	var label:UILabel?
}
