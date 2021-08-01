//
//  ProfileEditController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 01/08/21.
//

import UIKit

class ProfileEditController: UIViewController {

    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var buttonMale: UIButton!
    @IBOutlet weak var labelMale: UILabel!
    @IBOutlet weak var buttonFemale: UIButton!
    @IBOutlet weak var labelFemale: UILabel!
    @IBOutlet weak var buttonSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Edit Data"
        buttonSave.layer.cornerRadius = 14
    }
    
}
