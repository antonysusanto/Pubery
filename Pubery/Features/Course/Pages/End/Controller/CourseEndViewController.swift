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
	var imageName:String?
	
	override func viewDidLoad() {
        super.viewDidLoad()
		backButton.layer.cornerRadius = 14
		imageView.image = UIImage(named: imageName ?? "congrats")
    }
	
	@IBAction func backToMenu(_ sender: Any) {
		self.navigationController?.popToRootViewController(animated: true)
	}
	
}
