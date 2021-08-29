//
//  GradientView.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import Foundation
import UIKit

@IBDesignable
class gradientView: UIView {

    @IBInspectable var topColor: UIColor =  #colorLiteral(red: 1, green: 0.9098039216, blue: 0.6509803922, alpha: 1)
    @IBInspectable var bottomColor: UIColor =  #colorLiteral(red: 1, green: 0.8315935731, blue: 0.5631858706, alpha: 1)
    @IBInspectable var cornerRadius: CGFloat = 22
    
    @IBInspectable
    var shadowColor: UIColor = .black
    @IBInspectable
    var shadowOpacity: CGFloat = 1
    @IBInspectable
    var shadowRadius: CGFloat = 10
    @IBInspectable
    var shadowOffset: CGFloat = .zero
    @IBInspectable
    var shouldRasterize: Bool = true
    
    var startPointX: CGFloat = 1
    var startPointY: CGFloat = 0
    var endPointX: CGFloat = 1
    var endPointY: CGFloat = 1

    
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer ()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 22
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func prepareForInterfaceBuilder() {
//        applyshadowWithCorner(view: self, cornerRadious: 22)
        dropShadow(scale: true)
    }
}
