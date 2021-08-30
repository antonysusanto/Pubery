//
//  PMSViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 25/08/21.
//

import UIKit

class PMSViewController: UIViewController {

	@IBOutlet weak var mainImage: UIImageView!
	@IBOutlet weak var symptom: UILabel!
	@IBOutlet weak var question: UILabel!
	@IBOutlet weak var answerView1: UIView!
	@IBOutlet weak var answerView2: UIView!
	@IBOutlet weak var answerView3: UIView!
	@IBOutlet weak var answerView4: UIView!
	@IBOutlet weak var answerView5: UIView!
	@IBOutlet weak var stack1: UIStackView!
	@IBOutlet weak var stack2: UIStackView!
	@IBOutlet weak var finishOverlay: UIView!
	
	var mainImages = ["c9_3", "c9_5", "c9_7"]
	var symptoms = ["Kram Perut", "Nyeri Payudara", "Perubahan Emosi"]
	var questions = ["Apa yang Putri butuhkan?"]
	var answers = [4, 1, 3]
	var index = 0
	var timer: Timer?
	var timerCounter = 0
	var views:[UIView] = []
	var lastTag = 0
	let alert = CustomAlert()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		setQuestion(index: index)
		views = [answerView1, answerView2, answerView3, answerView4, answerView5]
		alert.showAlert(with: "Klik gambar solusi yang tepat untuk setiap PMS!", on: self)
    }
	
	func setQuestion(index:Int) {
		mainImage.image = UIImage(named: mainImages[index])
		symptom.text = symptoms[index]
	}
	
	func answer(view:UIView, answerGiven:Int){
		for v in views {
			v.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
			v.layer.borderWidth = 0
		}
		let correct = (answers[index] == answerGiven)
		answerFeedback(view: view, correct: correct)
	}
	
	func answerFeedback(view:UIView, correct:Bool) {
		
		timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) { (timer) in
			self.timerCounter += 1
			if (view.layer.borderWidth == 0) {
				view.layer.borderWidth = 2
			} else {
				view.layer.borderWidth = 0
			}
			if (self.timerCounter == 4){
				timer.invalidate()
				self.timerCounter = 0
				view.layer.borderWidth = 2
				if (correct) {
					view.layer.borderColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
					PlaySoundAsset.play("ok")
					
					DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
						view.layer.borderWidth = 0
						view.alpha = 0.2
						view.isUserInteractionEnabled = false
						if (self.index < self.symptoms.count-1) {
							
							self.index += 1
							self.setQuestion(index: self.index)
						} else {
							//finish
							
							self.mainImage.isHidden = true
							self.symptom.isHidden = true
							self.question.isHidden = true
							self.stack1.isHidden = true
							self.stack2.isHidden = true
							self.finishOverlay.isHidden = false
						}
					}
					
				} else {
					view.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
					view.shakeAnimation()
					self.haptic()
					PlaySoundAsset.play("no")
				}
			}
		}
	}
	
	func haptic() {
		let generator = UIImpactFeedbackGenerator(style: .heavy)
		generator.impactOccurred()
	}

	@IBAction func close(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
	}
	
	@IBAction func finish(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
	}
	
	@IBAction func answer1(_ sender: UIButton) {
		if (lastTag != sender.tag){
			lastTag = sender.tag
			answer(view: answerView1, answerGiven: sender.tag)
		}
	}
	
	@IBAction func answer2(_ sender: UIButton) {
		if (lastTag != sender.tag){
			lastTag = sender.tag
			answer(view: answerView2, answerGiven: sender.tag)
		}
	}
	
	@IBAction func answer3(_ sender: UIButton) {
		if (lastTag != sender.tag){
			lastTag = sender.tag
			answer(view: answerView3, answerGiven: sender.tag)
		}
	}
	
	@IBAction func answer4(_ sender: UIButton) {
		if (lastTag != sender.tag){
			lastTag = sender.tag
			answer(view: answerView4, answerGiven: sender.tag)
		}
	}
	
	@IBAction func answer5(_ sender: UIButton) {
		if (lastTag != sender.tag){
			lastTag = sender.tag
			answer(view: answerView5, answerGiven: sender.tag)
		}
	}
}
