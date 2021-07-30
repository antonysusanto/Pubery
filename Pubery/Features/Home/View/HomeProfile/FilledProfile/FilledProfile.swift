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
    @IBOutlet weak var content: UIView!
    @IBOutlet weak var progressView: CircularProgressBar!
    
    var changes: Change?
    var changesModel: ChangeModel = HomeData.changesModel
    var course: Course?

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit(){
        Bundle(for: FilledProfile.self).loadNibNamed("FilledProfile", owner: self, options: nil)
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        namelabel.text = "Renata"
        genderLabel.text = "Perempuan"
        progressView.progress = 0.5
        addSubview(content)
    }

}
