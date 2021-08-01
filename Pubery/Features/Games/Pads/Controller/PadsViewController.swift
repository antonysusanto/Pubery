//
//  PadsViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 28/07/21.
//

import UIKit

class PadsViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var pakaianImage: UIImageView!
    @IBOutlet weak var targetImage: UIImageView!
    @IBOutlet weak var movedImage: UIImageView!
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    let customAlert = CustomAlert()
    
    var movedViewOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        endButton.isHidden = true
        addPanGesture(view: movedImage)
        movedViewOrigin = movedImage.frame.origin
        view.bringSubviewToFront(movedImage)
        navigationController?.setNavigationBarHidden(true, animated: false)
        customAlert.showAlert(with: "Pasangkan pembalut di tempat yang tepat", on: self)
    }
    
    @objc func dismissAlert(){
        customAlert.dismissAlert()
    }
    
    @IBAction func closeAction(_ sender: Any) {
    }
    
    @IBAction func endAction(_ sender: Any) {
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
        case .ended:
            if movedView.frame.intersects(targetImage.frame) {
                deleteView(view: movedView)
            } else { // snapback
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

