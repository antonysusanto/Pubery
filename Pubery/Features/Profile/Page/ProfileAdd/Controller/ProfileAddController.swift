//
//  ProfileAddController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 29/07/21.
//

import UIKit

class ProfileAddController: UIViewController {

    @IBOutlet weak var titleFirstPage: UILabel!
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var underLine: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTextField()
        buttonNext.layer.cornerRadius = 14
        navigationItem.title = .none
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//        self.tabBarController?.tabBar.isHidden = true
        underLine.layer.cornerRadius = 3
    }
    
    func customTextField() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: inputName.frame.height, width: inputName.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 200, green: 97, blue: 97, alpha: 1).cgColor
        inputName.borderStyle = .none
        inputName.layer.addSublayer(bottomLine)
    }

    @IBAction func toNextPage(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "finishID") as! ProfileAddFinishController
        vc.name = inputName.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
