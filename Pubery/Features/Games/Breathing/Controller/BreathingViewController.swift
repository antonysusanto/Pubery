//
//  BreathingViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 07/08/21.
//

import UIKit

class BreathingViewController: UIViewController {

	let customAlert = CustomAlert()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		customAlert.showAlert(with: "Coming soon", on: self)
	}

	@IBAction func back(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
	}
}
