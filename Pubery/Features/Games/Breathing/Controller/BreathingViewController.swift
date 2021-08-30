//
//  BreathingViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 07/08/21.
//

import UIKit

class BreathingViewController: UIViewController {

	@IBOutlet weak var lightCircle: UIImageView!
	@IBOutlet weak var darkCircle: UIImageView!
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var button: UIButton!
	
	let customAlert = CustomAlert()
	var count = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
//		customAlert.showAlert(with: "Petunjuk", on: self)
		self.label.text = "Ketika merasa ingin marah, coba untuk tetap tenang dan atur napas pelan-pelan"
		DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
			self.animateCircle()
		}
	}
	
	func animateCircle(){
		if (count == 5) {
			finish()
			return
		}
		count += 1
		DispatchQueue.main.async {
			UIView.animate(withDuration: 3, animations: {
				self.label.text = "Tarik napas..."
				self.lightCircle.transform = CGAffineTransform(scaleX: 2, y: 2)
			}) { _ in
				UIView.animate(withDuration: 3, animations: {
					self.label.text = "Hembuskan napas..."
					self.lightCircle.transform = CGAffineTransform(scaleX: 1, y: 1)
				}) { _ in
					self.animateCircle()
				}
			}
		}
	}
	
	func finish() {
		DispatchQueue.main.async {
			self.label.text = "Kerja bagus, Kamu telah berhasil mengontrol emosimu!"
			self.button.isHidden = false
			PlaySoundAsset.play("ok")
		}
	}
	
	@IBAction func close(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
	}
	
	@IBAction func back(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
	}
}
