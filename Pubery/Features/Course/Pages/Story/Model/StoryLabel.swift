//
//  StoryLabel.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

class StoryLabel : CustomConstraint {
	var text: String
	var type: LabelType
	var targetText: [String]
	var alignment: NSTextAlignment
	var fontSize: CGFloat
	
	init(text: String, type:LabelType = .regular, targetText:[String] = [], alignment:NSTextAlignment = .justified, fontsize:CGFloat = 18, padding: UIEdgeInsets, size: CGSize) {
		self.text = text
		self.type = type
		self.targetText = targetText
		self.alignment = alignment
		self.fontSize = fontsize
		super.init(padding: padding, size: size)
	}
}
