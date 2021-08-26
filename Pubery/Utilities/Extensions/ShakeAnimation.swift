//
//  ShakeAnimation.swift
//  Pubery
//
//  Created by Antony Susanto on 26/08/21.
//

import UIKit

extension UIView {
	func shakeAnimation() {
		let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
		animation.duration = 0.6
		animation.values = [-5.0, 5.0, -3.0, 3.0, -1.0, 1.0, -0.5, 0.5, 0.0 ]
		layer.add(animation, forKey: "shake")
	}
}
