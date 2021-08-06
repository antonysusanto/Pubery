//
//  BrushingViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 28/07/21.
//

import UIKit

class BrushingViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var pantsImage: UIImageView!
    @IBOutlet weak var targetImage: UIImageView!
    @IBOutlet weak var movedImage: UIImageView!
    @IBOutlet weak var bubleImage: UIImageView!
    
    let customAlert = CustomAlert()
    var movedViewOrigin: CGPoint!
    var counterIntersect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPanGesture(view: movedImage)
        movedViewOrigin = movedImage.frame.origin
        view.bringSubviewToFront(movedImage)
        bubleImage.isHidden = true
		bubleImage.alpha = 0.8
        endButton.isHidden = true
        
        customAlert.showAlert(with: "Tekan dan tahan sikat, lalu arahkan ke  noda sampai bersih.", on: self)
    }
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    @IBAction func closeAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func endAAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    
    // refactor
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        let movedView = sender.view!
        switch sender.state {
        case .changed:
            moveViewWithPan(view: movedView, sender: sender)
            if movedView.frame.intersects(targetImage.frame) {
                counterIntersect += 1
                bubleImage.isHidden = false

            } else if movedView.frame.intersects(backgroundImage.frame){
                bubleImage.isHidden = true
            }
			
			targetImage.alpha = CGFloat(Float(150-counterIntersect)/150)
			if counterIntersect > 150 {
				endView(view: movedView)
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
    
    func endView(view: UIView) {
        bubleImage.isHidden = true
        targetImage.isHidden = true
        closeButton.isHidden = true
        endButton.isHidden = false
        movedImage.isHidden = true
    }

}
