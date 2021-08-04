//
//  CircularProgressBar.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 30/07/21.
//

import UIKit

class CircularProgressBar: UIView {
    
    private var backgroundLayer: CAShapeLayer!
    private var progressLayer: CAShapeLayer!
    private var textLayer: CATextLayer!
    
    let totalCount = Courses.getPhysicalCourses().count + Courses.getMentalCourses().count
    
    public var progress: CGFloat = 0 {
        didSet{
//            didProgressUpdated()
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let width = rect.width
        let height = rect.height
        
        let lineWidth = 0.1 * min(width, height)
        
        backgroundLayer = createCircularLayer(rect: rect,
                                              strokeColor: UIColor.white.cgColor,
                                              fillCollor: UIColor.white.cgColor,
                                              lineWidth: lineWidth)
        shadowDrop()
        progressLayer = createCircularLayer(rect: rect,
                                              strokeColor: #colorLiteral(red: 0.8705882353, green: 0.4588235294, blue: 0.4588235294, alpha: 1),
                                              fillCollor: UIColor.white.cgColor,
                                              lineWidth: lineWidth)
        textLayer = createTextLayer(rect: rect, textColor: UIColor.black.cgColor)
        layer.addSublayer(backgroundLayer)
        layer.addSublayer(progressLayer)
        layer.addSublayer(textLayer)
    }
    
    private func shadowDrop(scale: Bool = true) {
        backgroundLayer.masksToBounds = false
        backgroundLayer.shadowColor = UIColor.black.cgColor
        backgroundLayer.shadowOpacity = 0.3
        backgroundLayer.shadowOffset = CGSize.zero
        backgroundLayer.shadowRadius = 5
        backgroundLayer.shouldRasterize = true
        backgroundLayer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    private func createCircularLayer(rect: CGRect,
                                     strokeColor: CGColor,
                                     fillCollor: CGColor,
                                     lineWidth: CGFloat) -> CAShapeLayer {
        let width = rect.width
        let height = rect.height
        
        let lineWidth = 0.1 * min(width, height)
        
        let center = CGPoint(x: width/2, y: height/2)
        let radius = (min(width, height) - lineWidth) / 2
        
        let startAngle = -CGFloat.pi / 2
        let endAngle = startAngle + 2 * CGFloat.pi
        
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = strokeColor
        shapeLayer.fillColor = fillCollor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineCap = .round
        
        
        if strokeColor != UIColor.white.cgColor{
            shapeLayer.strokeEnd = progress
        }

        return shapeLayer
    }
    
    private func createTextLayer(rect: CGRect, textColor: CGColor) -> CATextLayer {
        let width = rect.width
        let height = rect.height
        let fontSize = min(width, height) / 6
        let offSet = min(width, height) * 0.1
        let layer = CATextLayer()
//        layer.string = "1/\(Courses.getPhysicalCourses().count + Courses.getMentalCourses().count)"
//        layer.string = "\(Int(progress * 100))%"
        layer.string = "1/\(totalCount)"
        layer.backgroundColor = UIColor.clear.cgColor
        layer.foregroundColor = textColor
        layer.fontSize = fontSize
        layer.frame = CGRect(x: 0,
                             y: (height - fontSize - offSet) / 2,
                             width: width,
                             height: fontSize + offSet)
        layer.alignmentMode = .center
        
        return layer
    }
    
    private func didProgressUpdated(){
//        textLayer?.string = "1/\(Courses.getPhysicalCourses().count + Courses.getMentalCourses().count)"
//        progressLayer?.strokeEnd = progress
    }
}
