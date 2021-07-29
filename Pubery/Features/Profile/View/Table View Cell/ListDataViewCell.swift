//
//  ListDataViewCell.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 28/07/21.
//

import UIKit

class ListDataViewCell: UITableViewCell {

    @IBOutlet weak var dataView: UIView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dataView.layer.cornerRadius = 22
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
