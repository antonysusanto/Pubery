//
//  ImageStatic.swift
//  Pubery
//
//  Created by Antony Susanto on 30/07/21.
//

import UIKit

class StoryStyle1: UIView {

	let xibName = "StoryStyle1"
	
	@IBOutlet var view: UIView!
	@IBOutlet weak var imageView: UIImageView!
	
	@IBOutlet weak var label: UILabel!
	

	
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
	
	func setup(){
		let bundle = Bundle.init(for: StoryStyle1.self)
		if let viewToAdd = bundle.loadNibNamed(xibName, owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
			addSubview(contentView)
			contentView.frame = self.bounds
//			contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
			contentView.translatesAutoresizingMaskIntoConstraints = false
		}
	}
	
//	static func instantiate(imageName: String, label: String) -> UIView {
//		let bundle = Bundle.init(for: ImageStatic.self)
//		if let viewToAdd = bundle.loadNibNamed("ImageStatic", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
////			addSubview(contentView)
////			contentView.frame = self.bounds
////			contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
////			contentView.translatesAutoresizingMaskIntoConstraints = false
//			return contentView
//		}
//		}
}

extension UIView
{
	func fixInView(_ container: UIView!) -> Void{
//		self.translatesAutoresizingMaskIntoConstraints = false;
		self.frame = container.frame;
		container.addSubview(self);
//		NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
//		NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
//		NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
//		NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
	}
}
