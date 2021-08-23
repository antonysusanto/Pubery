//
//  BriefingViewController.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 02/08/21.
//

import UIKit

class BriefingViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    var bullets:[String] = []
    
    @IBOutlet weak var introductionLabel: UILabel!
    @IBOutlet weak var introductionDetailLabel: UILabel!
    @IBOutlet weak var saranLabel: UILabel!
    @IBOutlet weak var saranDetailLabel: UILabel!
    
    @IBOutlet weak var perhatianLabel: UILabel!
    @IBOutlet weak var perhatianDetailLabel: UILabel!
	
	var selectedCourse: Courses!
	var introductionData: CourseIntroduction!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		introductionData = selectedCourse.getCourseIntroduction()
        addBullet()
        introductionLabel.text = "Pada pembelajaran ini anak akan belajar tentang:"
        saranLabel.text = "Saran untuk orang tua:"
		saranDetailLabel.text = introductionData.advice
        perhatianLabel.text = "Perhatian!"
		perhatianDetailLabel.text = introductionData.attention
        setAccessibility()
    }
    
    func setAccessibility(){
        introductionLabel.isAccessibilityElement = true
        introductionDetailLabel.isAccessibilityElement = true
        saranLabel.isAccessibilityElement = true
        saranDetailLabel.isAccessibilityElement = true
        perhatianLabel.isAccessibilityElement = true
        perhatianLabel.isAccessibilityElement = true
    }
    
    override func updateViewConstraints() {
        self.view.frame.size.height = UIScreen.main.bounds.height - 100
        self.view.frame.origin.y =  100
        self.view.roundCorners(corners: [.topLeft, .topRight], radius: 30.0)
        super.updateViewConstraints()
    }
    
    func addBullet(){
		bullets = introductionData.introduction
                 
        let attributesDictionary = [NSAttributedString.Key.font : introductionDetailLabel.font]
		let fullAttributedString = NSMutableAttributedString(string: "", attributes: attributesDictionary as [NSAttributedString.Key : Any])
                 
        for string: String in bullets {
            let bulletPoint: String = "\u{2022}"
            let formattedString: String = "\(bulletPoint) \(string)\n"
            let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: formattedString)
            let paragraphStyle = createParagraphAttribute()
            attributedString.addAttributes([NSAttributedString.Key.paragraphStyle: paragraphStyle], range: NSMakeRange(0, attributedString.length));       fullAttributedString.append(attributedString)
        }
        introductionDetailLabel.attributedText = fullAttributedString
    }
             
    func createParagraphAttribute() ->NSParagraphStyle {
        var paragraphStyle: NSMutableParagraphStyle
        paragraphStyle = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
//        paragraphStyle.tabStops = [NSTextTab(textAlignment: .Left, location: 15, options: NSDictionary() as! [String : AnyObject])]
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 0
        paragraphStyle.headIndent = 15
        paragraphStyle.lineSpacing = 10
        return paragraphStyle
    }
    
	@IBAction func close(_ sender: Any) {
		self.dismiss(animated: true, completion: nil)
	}
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
 }
