//
//  AcneViewController.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 06/08/21.
//

import UIKit

class AcneViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var faceImage: UIImageView!
    @IBOutlet weak var targetImage: UIImageView!
    @IBOutlet weak var movedImage: UIImageView!
    @IBOutlet weak var bubbleImage: UIImageView!
    
    let customAlert = CustomAlert()
    var movedViewOrigin: CGPoint!
    var counterIntersect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPanGesture(view: movedImage)
        movedViewOrigin = movedImage.frame.origin
        view.bringSubviewToFront(movedImage)
        
        bubbleImage.isHidden = true
        bubbleImage.alpha = 0.8
        endButton.isHidden = true

        customAlert.showAlert(with: "Arahkan tangan untuk mengusap wajah dengan lembut", on: self)
    }
    
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        print("success")
        let movedView = sender.view!
        switch sender.state {

        case .changed:
            moveViewWithPan(view: movedView, sender: sender)
            if movedView.frame.intersects(targetImage.frame) {
                counterIntersect += 1
                bubbleImage.isHidden = false

            } else if movedView.frame.intersects(backgroundImage.frame){
                bubbleImage.isHidden = true
//                stopAnimation()
            }

            targetImage.alpha = CGFloat(Float(150-counterIntersect)/150)
            if counterIntersect > 150 {
				PlaySoundAsset.play("ok")
                endView(view: movedView)
            }
 
        default:
            break
        }
    }
    
    @IBAction func closeAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }

    @IBAction func endAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func endView(view: UIView) {
        bubbleImage.isHidden = true
        movedImage.isHidden = true
        targetImage.isHidden = true
        closeButton.isHidden = true
        endButton.isHidden = false
    }

}
