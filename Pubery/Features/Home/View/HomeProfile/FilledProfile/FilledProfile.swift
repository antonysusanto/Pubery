//
//  FilledProfile.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 29/07/21.
//

import UIKit

class FilledProfile: UIView {
    
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var content: UIView!
    @IBOutlet weak var progressView: CircularProgressBar!
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit(){
        Bundle(for: FilledProfile.self).loadNibNamed("FilledProfile", owner: self, options: nil)
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        namelabel.text = "Renata"
//        genderLabel.text = "Perempuan"
//        progressView.progress = CGFloat(Int(Courses.getMentalCourses().count + Courses.getPhysicalCourses().count))
        let totalCount: Float = (Float(Courses.getPhysicalCourses().count + Courses.getMentalCourses().count))
        let progressValue: Float = 1 / totalCount
        progressView.progress = CGFloat(progressValue)
        print(progressValue)
        addSubview(content)
    }

}
