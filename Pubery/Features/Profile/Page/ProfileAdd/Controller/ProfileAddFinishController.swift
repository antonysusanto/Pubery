//
//  ProfileAddFinishController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 30/07/21.
//

import UIKit

class ProfileAddFinishController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonImageMale: UIButton!
    @IBOutlet weak var buttonImageFemale: UIButton!
    @IBOutlet weak var labelMale: UILabel!
    @IBOutlet weak var labelFemal: UILabel!
    @IBOutlet weak var buttonDone: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonDone.layer.cornerRadius = 14
    }
    
    

}
