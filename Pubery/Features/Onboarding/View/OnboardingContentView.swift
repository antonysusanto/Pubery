//
//  OnboardingContentView.swift
//  Pubery
//
//  Created by Antony Susanto on 28/07/21.
//

import UIKit

class OnboardingContentView: UIView {

	let xibName = "OnboardingContentView"
	
	@IBOutlet var view: UIView!
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var title: UILabel!
	@IBOutlet weak var subtitle: UILabel!
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupXib()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupXib()
	}
	
	func setupXib() {
		Bundle.main.loadNibNamed(xibName, owner: self, options: nil)
		view.fixInView(self)
	}
}

extension UIView
{
	func fixInView(_ container: UIView!) -> Void{
		self.translatesAutoresizingMaskIntoConstraints = false;
		self.frame = container.frame;
		container.addSubview(self);
		NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
		NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
		NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
		NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
	}
}
