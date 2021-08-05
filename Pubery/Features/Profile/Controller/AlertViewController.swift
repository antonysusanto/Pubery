//
//  AlertViewController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 05/08/21.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var allowButton: UIButton!
    
    var getName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        animateView()
    }
    
    func setupView(){
        alertView.layer.cornerRadius = 20
        alertLabel.text = "Ganti anak ke \(getName!)?"
        cancelButton.layer.cornerRadius = 10
        allowButton.layer.cornerRadius = 10
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    }
    
    func animateView() {
        alertView.alpha = 0
        self.alertView.frame.origin.y = self.alertView.frame.origin.y + 0
        UIView.animate(withDuration: 0.8, animations: { () -> Void in
            self.alertView.alpha = 1.0
            self.alertView.frame.origin.y = self.alertView.frame.origin.y - 0
        })
    }
    
    @IBAction func cancelTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func allowTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        UserDefaults.standard.setValue(getName, forKey: "selectedChild")
    }
    
}
