//
//  ContentView.swift
//  Pubery
//
//  Created by Antony Susanto on 31/07/21.
//

import UIKit

class ContentView: UIView {
	
	@IBOutlet var background: UIView!
	@IBOutlet var view: UIView!

	let xibName = "ContentView"

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
		background.fixInView(self)
	}
}

