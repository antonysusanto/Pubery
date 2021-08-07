//
//  CustomAlert.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 28/07/21.
//

import Foundation
import UIKit

class CustomAlert{
    
    struct constant {
        static let backgroundAlphaTo: CGFloat = 0.6
    }
    
    private let backgroundview: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    private let alertView: UIView = {
        let alert = UIView()
        alert.backgroundColor = .white
        alert.layer.masksToBounds = true
        alert.layer.cornerRadius = 21
        return alert
    }()
    
    private var myTargetView: UIView?
    
    func showAlert(with message: String, on ViewController: UIViewController){
        guard let targetView = ViewController.view else {
            return
        }
        myTargetView = targetView
        
        backgroundview.frame = targetView.bounds
        targetView.addSubview(backgroundview)
        targetView.addSubview(alertView)
        alertView.frame = CGRect(x: 43,
                                 y: -363,
                                 width: 328,
                                 height: 222)
        let messagelabel = UILabel(frame: CGRect(x: 0,
                                                 y: 40,
                                                 width: alertView.frame.size.width,
                                                 height: 95))
        messagelabel.text = message
        messagelabel.textAlignment = .center
        messagelabel.numberOfLines = 0
        messagelabel.font = UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.medium)
        self.alertView.addSubview(messagelabel)
        
        let button = UIButton(frame: CGRect(x: 114,
                                            y: alertView.frame.size.height-60,
                                            width: 100,
                                            height: 40))
        button.setTitle("Mulai", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.9058058858, blue: 0.6143963933, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
        button.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
        self.alertView.addSubview(button)
//        self.button.addSubview(button)
        
        UIView.animate(withDuration: 0.4, animations: {
            self.backgroundview.alpha = constant.backgroundAlphaTo
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 0.4, animations: {
                    self.alertView.center = targetView.center
                })
            }
        }
        )
        
    }
    
    @objc func dismissAlert(){
        guard let targetView = myTargetView else {
            return
        }
        UIView.animate(withDuration: 0.4, animations: {
            self.alertView.frame = CGRect(x: 43,
                                          y: targetView.frame.size.height,
                                          width: 328,
                                          height: 222)
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 0.4, animations: {
                    self.backgroundview.alpha = 0
                }, completion: { done in
                    if done {
                        self.alertView.removeFromSuperview()
                        self.backgroundview.removeFromSuperview()
                    }
                }
                )
            }
        }
        )
        
    }
}
