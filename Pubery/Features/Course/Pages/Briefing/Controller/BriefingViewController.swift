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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBullet()
        introductionLabel.text = "Pada pembelajaran ini anak akan belajar tentang:"
        saranLabel.text = "Saran untuk orang tua:"
        saranDetailLabel.text = "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung"
        perhatianLabel.text = "Perhatian!"
        perhatianDetailLabel.text = "Materi ini mengandung ilustrasi organ reproduksi di dalam tubuh. Disarankan untuk anak usia 11 tahun ke atas."
    }
    
    override func updateViewConstraints() {
           self.view.frame.size.height = UIScreen.main.bounds.height - 100
           self.view.frame.origin.y =  100
           self.view.roundCorners(corners: [.topLeft, .topRight], radius: 30.0)
           super.updateViewConstraints()
    }
    
    func addBullet(){
        let bullet1 = "Penjelasan tentang menstruasi"
        let bullet2 = "Proses terjadinya menstruasi"
        let bullet3 = "Penjelasan organ - organ reproduksi perempuan"
                 
        bullets = [bullet1, bullet2, bullet3]
                 
        let attributesDictionary = [NSAttributedString.Key.font : introductionDetailLabel.font]
        let fullAttributedString = NSMutableAttributedString(string: "", attributes: attributesDictionary)
                 
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
    
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
 }
