//
//  PadsViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 28/07/21.
//

import UIKit
import AVFoundation

class PadsViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var pakaianImage: UIImageView!
    @IBOutlet weak var targetImage: UIImageView!
    @IBOutlet weak var movedImage: UIImageView!
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    let customAlert = CustomAlert()
    
    var movedViewOrigin: CGPoint!
	var count = 0
	var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        endButton.isHidden = true
        addPanGesture(view: movedImage)
        
        view.bringSubviewToFront(movedImage)
        navigationController?.setNavigationBarHidden(true, animated: false)
        customAlert.showAlert(with: "Pasangkan pembalut di tempat yang tepat", on: self)
		
		if (UIAccessibility.isVoiceOverRunning) {
			pakaianImage.bottomAnchor.constraint(equalTo: movedImage.topAnchor, constant: -100).isActive = true
			
			movedImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
			pakaianImage.accessibilityLabel = "Celana. Posisi di tengah layar."
			movedImage.accessibilityLabel = "Direct touch area. Pembalut. Posisi di tengah bawah layar. Seret dan lepas ke celana di tengah layar."
		}
    }
	
	override func viewDidLayoutSubviews() {
		movedViewOrigin = movedImage.frame.origin
	}

    @objc func dismissAlert(){
        customAlert.dismissAlert()
    }
    
    @IBAction func closeAction(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func endAction(_ sender: Any) {
		self.navigationController?.popViewController(animated: false)
    }
    
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    // refactor
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        let movedView = sender.view!
        switch sender.state {
        case .began, .changed:
            moveViewWithPan(view: movedView, sender: sender)
			if (UIAccessibility.isVoiceOverRunning){
				count += 1
				if count % 10 == 0 {
					if movedView.frame.intersects(targetImage.frame) {
						let generator = UIImpactFeedbackGenerator(style: .heavy)
						generator.impactOccurred()
					} else {
						let generator = UIImpactFeedbackGenerator(style: .soft)
						generator.impactOccurred()
					}
				}
			}
        case .ended:
            if movedView.frame.intersects(targetImage.frame) {
				movedView.center = targetImage.center
				PlaySoundAsset.play("ok")
				
                deleteView(view: movedView)
            } else {
				PlaySoundAsset.play("no")
                returnViewToOrigin(view: movedView)
            }
        default:
            break
        }
    }

    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func returnViewToOrigin(view: UIView) {
        UIView.animate(withDuration: 0.6, animations: {view.frame.origin = self.movedViewOrigin
        })
    }
    
    func deleteView(view: UIView) {
        UIView.animate(withDuration: 0.6, animations: {view.alpha = 1
        })
        targetImage.isHidden = true
        closeButton.isHidden = true
        endButton.isHidden = false
    }
}

