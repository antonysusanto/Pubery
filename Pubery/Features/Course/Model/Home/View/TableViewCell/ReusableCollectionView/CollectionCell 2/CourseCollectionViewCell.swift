//
//  CourseCollectionViewCell.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import UIKit

class CourseCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CourseCollectionViewCell"
    @IBOutlet weak var content: UIView!
    @IBOutlet weak var largeView: UIView!
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var checkListImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        checkListImage.isHidden = true
        smallView.layer.cornerRadius = 22
        smallView.dropShadow(scale: true)
        largeView.layer.cornerRadius = 22
        largeView.dropShadow(scale: true)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CourseCollectionViewCell", bundle: nil)
    }
}
extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
//        layer.shadowRadius: CGFloat = 6
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
        self.layer.cornerRadius = 22
    }
    
}
