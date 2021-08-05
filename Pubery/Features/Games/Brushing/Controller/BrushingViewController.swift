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
    var bubble_1: UIImage!
    var bubble_2: UIImage!
    var bubble_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    var counterIntersect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPanGesture(view: movedImage)
        movedViewOrigin = movedImage.frame.origin
        view.bringSubviewToFront(movedImage)
//        targetImage.backgroundColor = .yellow
        bubleImage.isHidden = true
        endButton.isHidden = true
        
        customAlert.showAlert(with: "Tekan dan tahan sikat, lalu arahkan ke  noda sampai bersih.", on: self)
        
        bubble_1 = UIImage(named: "bubble1")
        bubble_2 = UIImage(named: "bubble2")
        bubble_3 = UIImage(named: "bubble3")
        images = [bubble_1, bubble_2, bubble_3]
    }
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    func startAnimation(){
        bubleImage.animationImages =  images
        bubleImage.animationDuration = 2
        bubleImage.animationRepeatCount = 10
        bubleImage.startAnimating()
    }
    
    func stopAnimation(){
        bubleImage.stopAnimating()
        bubleImage.isHidden = true
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
//        movedView.backgroundColor = .yellow
        switch sender.state {
        case .began:
            moveViewWithPan(view: movedView, sender: sender)
        case .changed:
            moveViewWithPan(view: movedView, sender: sender)
            if movedView.frame.intersects(targetImage.frame) {
                counterIntersect += 1
                bubleImage.isHidden = false
            }
            else if movedView.frame.intersects(backgroundImage.frame){
                bubleImage.isHidden = true
            }
//            print(counterIntersect)
            if counterIntersect < 50 {
                targetImage.alpha = 0.9
//                startAnimation()
//                bubleImage.isHidden = false
//                bubleImage.image = bubble_1
                bubleImage.alpha = 0.9
            }
            else if counterIntersect < 100 {
                targetImage.alpha = 0.5
//                startAnimation()
//                bubleImage.isHidden = false
//                bubleImage.image = bubble_2
                bubleImage.alpha = 0.5
            }
            else if counterIntersect < 150 {
                targetImage.alpha = 0.3
//                startAnimation()
//                bubleImage.isHidden = false
//                bubleImage.image = bubble_3
                bubleImage.alpha = 0.3
            }
            else if counterIntersect < 200 {
                targetImage.alpha = 0.1
//                startAnimation()
                bubleImage.isHidden = true
            }
        case .ended:
            if movedView.frame.intersects(targetImage.frame) {
                counterIntersect += 1
                if counterIntersect > 200 {
                    endView(view: movedView)
                }
//                stopAnimation()
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
//        UIView.animate(withDuration: 0.6, animations: {view.alpha = 1
//        })
//        stopAnimation()
        bubleImage.isHidden = true
        targetImage.isHidden = true
        closeButton.isHidden = true
        endButton.isHidden = false
        movedImage.isHidden = true
    }

}
