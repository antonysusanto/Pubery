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
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    var counterIntersect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPanGesture(view: movedImage)
        movedViewOrigin = movedImage.frame.origin
        view.bringSubviewToFront(movedImage)
        
        bubleImage.isHidden = true
        endButton.isHidden = true
        
        customAlert.showAlert(with: "Tekan dan tahan sikat, lalu arahkan ke  noda sampai bersih.", on: self)
        
        loading_1 = UIImage(named: "bubble1")
        loading_2 = UIImage(named: "bubble2")
        loading_3 = UIImage(named: "bubble3")
        images = [loading_1, loading_2, loading_3]
    }
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        pan.maximumNumberOfTouches = 4
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
        switch sender.state {
        case .began:
            moveViewWithPan(view: movedView, sender: sender)
            if counterIntersect < 1 {
                targetImage.alpha = 0.9
                startAnimation()
                bubleImage.isHidden = false
            }
            else if counterIntersect < 2 {
                targetImage.alpha = 0.7
                startAnimation()
                bubleImage.isHidden = false
            }
            else if counterIntersect < 3{
                targetImage.alpha = 0.5
                startAnimation()
                bubleImage.isHidden = false
            }
            else if counterIntersect < 4 {
                targetImage.alpha = 0.1
                startAnimation()
                bubleImage.isHidden = false
            }
        case .changed:
            moveViewWithPan(view: movedView, sender: sender)
        case .ended:
            if movedView.frame.intersects(targetImage.frame) {
                counterIntersect += 1
                if counterIntersect > 3 {
                    endView(view: movedView)
                }
                stopAnimation()
            }
        default:
            break
        }
        print(sender.state)
    }
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func endView(view: UIView) {
//        UIView.animate(withDuration: 0.6, animations: {view.alpha = 1
//        })
        stopAnimation()
        targetImage.isHidden = true
        closeButton.isHidden = true
        endButton.isHidden = false
        movedImage.isHidden = true
    }

}
