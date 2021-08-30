//
//  FilledProfile.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 29/07/21.
//

import UIKit

class FilledProfile: UIView {
    
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var content: UIView!
    @IBOutlet weak var progressView: CircularProgressBar!
	var selectedChild: String!
	
	init(frame: CGRect, selectedChild: String) {
		self.selectedChild = selectedChild
		super.init(frame: frame)
		commonInit()
	}
        
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
        namelabel.text = selectedChild
		let childProgress = (UserDefaults.standard.stringArray(forKey: "progress_\(selectedChild ?? "")"))?.count ?? 0
        let totalCount = (Courses.getPhysicalCourses().count + Courses.getMentalCourses().count)
        let progressValue: Float = Float(childProgress) / Float(totalCount)
        progressLabel.text = "\(childProgress)/\(totalCount)"
        progressLabel.isAccessibilityElement = true
        if childProgress == 0 {
            progressLabel.accessibilityLabel = "belum ada materi yang sudah dibaca"
        } else {
            progressLabel.accessibilityLabel = "\(childProgress) dari \(totalCount) materi sudah dibaca"
        }
		progressView.childProgress = childProgress
        progressView.progress = CGFloat(progressValue)
        namelabel.isAccessibilityElement = true
        addSubview(content)
    }

}
