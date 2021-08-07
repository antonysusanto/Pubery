//
//  EmptyProfile.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 29/07/21.
//

import UIKit

class EmptyProfile: UIView {

    @IBOutlet weak var line1Label: UILabel!
    @IBOutlet weak var line2Label: UILabel!
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
        line1Label.text = "Hai!"
        line2Label.text = "Siap belajar?"
        addSubview(content)
    }

}
