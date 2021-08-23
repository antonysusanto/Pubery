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

class ProfileEditController: UIViewController, UITextFieldDelegate {

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
    var oldName: String!
    var indexData: Children!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Edit Data"
        setUpView()
        nameField.text = oldName
        checkGender()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        self.nameField.delegate = self
        setUpAccessibility()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.view.endEditing(true)
            return false
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
        labelMale.text = "Laki-Laki"
        labelFemale.text = "Perempuan"
    }
    
    @IBAction func male(_ sender: UIButton) {
        buttonFemale.backgroundColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.6, alpha: 1)
        buttonFemale.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        buttonMale.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        buttonMale.backgroundColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.6, alpha: 1)
        gender = "Male"
		buttonMale.accessibilityTraits = .selected
		buttonFemale.accessibilityTraits = .button
    }
    
    @IBAction func female(_ sender: UIButton) {
        buttonMale.backgroundColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.6, alpha: 1)
        buttonMale.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        buttonFemale.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        buttonFemale.backgroundColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.6, alpha: 1)
        gender = "Female"
		buttonMale.accessibilityTraits = .button
		buttonFemale.accessibilityTraits = .selected
    }
    
    func checkGender() {
        if gender == "Male"{
            buttonMale.backgroundColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.6, alpha: 1)
            buttonFemale.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
			buttonMale.accessibilityTraits = .selected
        } else {
            buttonFemale.backgroundColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.6, alpha: 1)
            buttonMale.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
			buttonFemale.accessibilityTraits = .selected
        }
    }
    
    func setUpAccessibility() {
        labelMale.isAccessibilityElement = false
        labelFemale.isAccessibilityElement = false
		buttonMale.accessibilityTraits = .button
		buttonFemale.accessibilityTraits = .button
        buttonMale.accessibilityLabel = "Jenis kelamin laki-laki"
        buttonFemale.accessibilityLabel = "Jenis kelamin perempuan"
    }
    
    @IBAction func editProfile(_ sender: Any) {

		if oldName != nameField.text {
			if oldName == UserDefaults.standard.string(forKey: "selectedChild") {
				UserDefaults.standard.setValue(nameField.text!, forKey: "selectedChild")
			}
			if let progress = UserDefaults.standard.stringArray(forKey: "progress_" + oldName!) {
				UserDefaults.standard.setValue(progress, forKey: "progress_" + nameField.text!)
			}
			UserDefaults.standard.removeObject(forKey: "progress_" + oldName!)
		}
		
		if oldName == UserDefaults.standard.string(forKey: "selectedChild") {
			UserDefaults.standard.setValue(gender, forKey: "selectedGender")
		}
		
		userData.updateChildren(newName: nameField.text!, newGender: gender, replaceData: indexData)
		delegate?.updateData()
		
		toProfile()
    }
    
    func toProfile(){
        let storyboard = UIStoryboard(name: "Profile", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ProfileID") as! ProfileViewController
        vc.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
