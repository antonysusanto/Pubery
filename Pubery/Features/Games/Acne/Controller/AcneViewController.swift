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
//    @IBOutlet weak var rightHandImage: UIImageView!
//    @IBOutlet weak var leftHandImage: UIImageView!
    @IBOutlet weak var movedImage: UIImageView!
    @IBOutlet weak var bubbleImage: UIImageView!
    
    //    @IBOutlet var handsImages: [UIImageView]!
//    @IBOutlet var targetImages: [UIImageView]!
    
    let customAlert = CustomAlert()
    var movedViewOrigin: CGPoint!
    var counterIntersect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for i in (0..<(handsImages.count)) {
//            let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
//            handsImages[i].isUserInteractionEnabled = true
//            handsImages[i].addGestureRecognizer(pan)
//        }
        
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
//        case .began:
//            moveViewWithPan(view: movedView, sender: sender)

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
                endView(view: movedView)
            }
            /*
//            print(counterIntersect)
            if counterIntersect < 40 {
                targetImage.alpha = 0.9
//                startAnimation()
//                bubleImage.isHidden = false
//                bubleImage.image = bubble_1
                bubleImage.alpha = 0.8
            }
            else if counterIntersect < 80 {
                targetImage.alpha = 0.5
//                startAnimation()
//                bubleImage.isHidden = false
//                bubleImage.image = bubble_2
                bubleImage.alpha = 0.8
            }
            else if counterIntersect < 120 {
                targetImage.alpha = 0.3
//                startAnimation()
//                bubleImage.isHidden = false
//                bubleImage.image = bubble_3
                bubleImage.alpha = 0.8
            }
            else if counterIntersect < 160 {
                targetImage.alpha = 0.1
//                startAnimation()
                bubleImage.alpha = 0.8
            }
            if counterIntersect > 160 {
                endView(view: movedView)
            }
            */

//        case .ended:
//            if movedView.frame.intersects(targetImage.frame) {
//                counterIntersect += 1
//                if counterIntersect > 200 {
//                    endView(view: movedView)
//                }
//                stopAnimation()
//            }
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
//        bubleImage.isHidden = true
//        for i in (0..<(targetImages.count)) {
//            targetImages[i].isHidden = true
//        }
        bubbleImage.isHidden = true
        movedImage.isHidden = true
        targetImage.isHidden = true
        closeButton.isHidden = true
        endButton.isHidden = false
//        for i in (0..<(handsImages.count)) {
//            handsImages[i].isHidden = true
//        }
    }

}
