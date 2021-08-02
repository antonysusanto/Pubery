//
//  ProfileAddFinishController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 30/07/21.
//

import UIKit
import CoreData

class ProfileAddFinishController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonImageMale: UIButton!
    @IBOutlet weak var buttonImageFemale: UIButton!
    @IBOutlet weak var labelMale: UILabel!
    @IBOutlet weak var labelFemal: UILabel!
    @IBOutlet weak var buttonDone: UIButton!
    
    var name:String!
    var check:String!
    var userData = CoreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonDone.layer.cornerRadius = 14
        print(name!)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func male(_ sender: UIButton) {
        buttonImageFemale.alpha = 0.5
        buttonImageMale.alpha = 1
        labelFemal.alpha = 0.5
        labelMale.alpha = 1
        check = "Male"
    }
    
    @IBAction func female(_ sender: UIButton) {
        buttonImageMale.alpha = 0.5
        buttonImageFemale.alpha = 1
        labelMale.alpha = 0.5
        labelFemal.alpha = 1
        check = "Female"
    }
    
    @IBAction func toProfilePage(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Profile", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ProfileID") as! ProfileViewController
        userData.createChildren(name: name, gender: check)
        print(userData.fetchChildren())
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
