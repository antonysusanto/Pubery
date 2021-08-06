//
//  ListDataViewCell.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 28/07/21.
//

import UIKit

class ListDataViewCell: UITableViewCell {

    var editOrDelete : (() -> ())?
    
    @IBOutlet weak var dataView: UIView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dataView.layer.cornerRadius = 22
        self.editButton?.addTarget(self, action: #selector(buttonEditOrDelete(_:)), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func buttonEditOrDelete(_ sender: Any) {
        editOrDelete?()
    }
    
    
}
