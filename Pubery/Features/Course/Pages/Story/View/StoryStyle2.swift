//
//  StoryStyle2.swift
//  Pubery
//
//  Created by Antony Susanto on 30/07/21.
//

import UIKit

class StoryStyle2: UIView {

	let xibName = "StoryStyle2"
	
	@IBOutlet var view: UIView!
	@IBOutlet weak var imageView: UIImageView!
	
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var label2: UILabel!
	

	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupXib()
//		setup()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupXib()
//		setup()
	}
	
	func setupXib() {
		Bundle.main.loadNibNamed(xibName, owner: self, options: nil)
		view.fixInView(self)
	}
	
//	func setup(){
//		let bundle = Bundle.init(for: ImageStatic.self)
//		if let viewToAdd = bundle.loadNibNamed(xibName, owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
//			addSubview(contentView)
//			contentView.frame = self.bounds
//			contentView.translatesAutoresizingMaskIntoConstraints = false
//		}
//	}

}
