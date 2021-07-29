//
//  FilledProfile.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 29/07/21.
//

import UIKit

class FilledProfile: UIView {
    
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var content: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit(){
        Bundle(for: EmptyProfile.self).loadNibNamed("EmptyProfile", owner: self, options: nil)
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        genderLabel.text = "Renata"
        percentageLabel.text = "Perempuan"
        percentageLabel.text = "24%"
        addSubview(content)
    }

}
