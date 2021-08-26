//
//  ShavingViewController.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/08/21.
//

import UIKit

class ShavingViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var faceImage: UIImageView!
    
    @IBOutlet weak var targetImage1: UIImageView!
    @IBOutlet weak var targetImage2: UIImageView!
    @IBOutlet weak var targetImage3: UIImageView!
    
    @IBOutlet weak var movedImage: UIImageView!
    @IBOutlet var targets: [UIImageView]!
    
    let customAlert = CustomAlert()
    var movedViewOrigin: CGPoint!
    var counterIntersect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addPanGesture(view: movedImage)
        movedViewOrigin = movedImage.frame.origin
        view.bringSubviewToFront(movedImage)
        endButton.isHidden = true
        
        customAlert.showAlert(with: "Tekan dan tahan alat cukur, lalu arahkan ke jenggot", on: self)
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
        case .changed:
            moveViewWithPan(view: movedView, sender: sender)
            if movedView.frame.intersects(targetImage1.frame) {
                counterIntersect += 1
                targetImage1.alpha = CGFloat(Float(100-counterIntersect)/100)
                if counterIntersect > 100 {
                    targetImage1.isHidden = true
                }
            } else if movedView.frame.intersects(targetImage2.frame) {
                counterIntersect += 1
                targetImage2.alpha = CGFloat(Float(100-counterIntersect)/100)
                if counterIntersect > 100 {
                    targetImage2.isHidden = true
                }
            } else if movedView.frame.intersects(targetImage3.frame) {
                counterIntersect += 1
                targetImage3.alpha = CGFloat(Float(100-counterIntersect)/100)
                if counterIntersect > 100 {
                    targetImage3.isHidden = true
                }
            }
            if targetImage1.isHidden == true, targetImage2.isHidden == true, targetImage3.isHidden == true {
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
        closeButton.isHidden = true
        endButton.isHidden = false
        movedImage.isHidden = true
    }

}
