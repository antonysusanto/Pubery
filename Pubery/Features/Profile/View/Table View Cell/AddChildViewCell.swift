//
//  AddChildViewCell.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 28/07/21.
//

import UIKit

protocol NotEmptyViewCellDelegate: AnyObject {
    
}

class AddChildViewCell: UITableViewCell {

    weak var delegate: NotEmptyViewCellDelegate?
    
    @IBOutlet weak var addView: UIView!
    @IBOutlet weak var addLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addView.layer.cornerRadius = 22
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
