//
//  EmptyViewCell.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 28/07/21.
//

import UIKit

class EmptyViewCell: UITableViewCell {

    @IBOutlet weak var emptyView: UIView!
    @IBOutlet weak var emptyLabel: UILabel!
    @IBOutlet weak var emptyButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    
}
