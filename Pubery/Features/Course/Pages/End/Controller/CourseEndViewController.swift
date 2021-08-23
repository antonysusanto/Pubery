//
//  CourseEndViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class CourseEndViewController: UIViewController {

	@IBOutlet weak var backButton: UIButton!
	@IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleEnd: UILabel!
    @IBOutlet weak var descEnd: UILabel!
    var selectedCourse: Courses!
    
	override func viewDidLoad() {
        super.viewDidLoad()
		backButton.layer.cornerRadius = 14
		imageView.image = UIImage(named: selectedCourse.getFinish().imageName)
		
		saveProgress()
        setUpAccessibility()
    }
	
	func saveProgress(){
		if let selectedChild = UserDefaults.standard.string(forKey: "selectedChild") {
			var progress = UserDefaults.standard.stringArray(forKey: "progress_" + selectedChild) ?? []
			if (!progress.contains(selectedCourse.rawValue)) {
				progress.append(selectedCourse.rawValue)
			}
			UserDefaults.standard.setValue(progress, forKey: "progress_" + selectedChild)
		}
	}
	
    func setUpAccessibility() {
        imageView.isAccessibilityElement = true
        imageView.accessibilityTraits = .image
        imageView.accessibilityLabel = selectedCourse.getFinish().imageName
        titleEnd.isAccessibilityElement = true
        descEnd.isAccessibilityElement = true
        backButton.isAccessibilityElement = true
        backButton.accessibilityTraits = .button
    }
    
	@IBAction func backToMenu(_ sender: Any) {
		self.navigationController?.popToRootViewController(animated: true)
	}
	
}
