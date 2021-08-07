//
//  ProfileAddController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 29/07/21.
//

import UIKit

class ProfileAddController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var titleFirstPage: UILabel!
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var underLine: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonNext.layer.cornerRadius = 14
        navigationItem.title = .none
        underLine.layer.cornerRadius = 5
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.tabBarController?.tabBar.isHidden = true
        inputName?.delegate = self
        buttonNext?.isUserInteractionEnabled = false
        buttonNext?.alpha = 0.5
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        self.inputName.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.view.endEditing(true)
            return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

            let text = (inputName.text! as NSString).replacingCharacters(in: range, with: string)

            if !text.isEmpty{
                buttonNext?.isUserInteractionEnabled = true
                buttonNext?.alpha = 1.0
            } else {
                buttonNext?.isUserInteractionEnabled = false
                buttonNext?.alpha = 0.5
            }
            return true
        }

    @IBAction func toNextPage(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "finishID") as! ProfileAddFinishController
        vc.name = inputName.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
