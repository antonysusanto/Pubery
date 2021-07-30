//
//  EmptyViewCell.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 28/07/21.
//

import UIKit

protocol EmptyViewCellDelegate: class {
    func goToNextPage()
}

class EmptyViewCell: UITableViewCell {

    weak var delegate: EmptyViewCellDelegate?
    
    @IBOutlet weak var emptyView: UIView!
    @IBOutlet weak var emptyLabel: UILabel!
    @IBOutlet weak var emptyButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        emptyButton.layer.cornerRadius = 14
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func toAddProfile(_ sender: Any) {
        delegate?.goToNextPage()
    }
    
    
}
