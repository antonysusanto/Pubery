//
//  ProfileEditController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 01/08/21.
//

import UIKit

protocol getUpdateDataDelegate: AnyObject {
    func updateData()
}

class ProfileEditController: UIViewController {

    weak var delegate:getUpdateDataDelegate!
    
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var buttonMale: UIButton!
    @IBOutlet weak var labelMale: UILabel!
    @IBOutlet weak var buttonFemale: UIButton!
    @IBOutlet weak var labelFemale: UILabel!
    @IBOutlet weak var buttonSave: UIButton!
    
    var userData = CoreDataManager()
    var gender: String!
    var name: String!
    var indexData: Children!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Edit Data"
        setUpView()
        nameField.text = name
        checkGender()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.backBarButtonItem = .none
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationItem.backBarButtonItem = .none
    }
    
    
    func setUpView() {
        buttonSave.layer.cornerRadius = 14
        buttonFemale.layer.cornerRadius = 10
        buttonMale.layer.cornerRadius = 10
        labelMale.text = "Laki - Laki"
        labelFemale.text = "Perempuan"
    }
    
    @IBAction func male(_ sender: UIButton) {
        buttonFemale.backgroundColor = UIColor.green
        buttonFemale.backgroundColor = UIColor.black
        buttonMale.backgroundColor = UIColor.black
        buttonMale.backgroundColor = UIColor.green
        gender = "Male"
    }
    
    @IBAction func female(_ sender: UIButton) {
        buttonMale.backgroundColor = UIColor.green
        buttonMale.backgroundColor = UIColor.black
        buttonFemale.backgroundColor = UIColor.black
        buttonFemale.backgroundColor = UIColor.green
        gender = "Female"
    }
    
    func checkGender() {
        if gender == "Male"{
            buttonMale.backgroundColor = UIColor.green
            buttonFemale.backgroundColor = UIColor.black
        } else {
            buttonFemale.backgroundColor = UIColor.green
            buttonMale.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func toProfile(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Profile", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ProfileID") as! ProfileViewController
        name = nameField.text
        vc.navigationItem.hidesBackButton = true
        userData.updateChildren(newName: name, newGender: gender, replaceData: indexData)
        delegate?.updateData()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
