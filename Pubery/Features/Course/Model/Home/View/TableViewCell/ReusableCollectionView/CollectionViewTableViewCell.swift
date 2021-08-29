//
//  CollectionViewTableViewCell.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import UIKit

protocol CustomCellDelegator {
    func cellWasPressed(withData: Courses)
}

class CollectionViewTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var delegate: CustomCellDelegator?
//    weak var delegate: SegueSelectionDelegate?
    static let identifier = "CollectionViewTableViewCell"
    @IBOutlet weak var changesLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    var changes: Change?{
        didSet{
            changesLabel.text = changes?.typeOfChanges
            collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(CourseCollectionViewCell.nib(), forCellWithReuseIdentifier: CourseCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
		
        changesLabel.isAccessibilityElement = true
		changesLabel.accessibilityTraits = .header
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionViewTableViewCell", bundle: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return changes?.materialChanges.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CourseCollectionViewCell.identifier, for: indexPath) as! CourseCollectionViewCell
		cell.isAccessibilityElement = true
		cell.accessibilityTraits = .button
		cell.accessibilityLabel = changes?.materialChanges[indexPath.row].title
        cell.courseLabel.text = changes?.materialChanges[indexPath.row].title
		cell.courseImage.image = UIImage(named: changes?.materialChanges[indexPath.row].imageDetails[0] ?? "page1")
		cell.checkListImage.isHidden = true
		if let selectedChild = UserDefaults.standard.string(forKey: "selectedChild") {
			let progress = UserDefaults.standard.stringArray(forKey: "progress_" + selectedChild) ?? []
			if (progress.contains((changes?.materialChanges[indexPath.row].title)!)) {
                cell.checkListImage.isHidden = false
//                cell.checkListImage.isAccessibilityElement = true
//                cell.checkListImage.accessibilityTraits = .none
				cell.accessibilityLabel = (changes?.materialChanges[indexPath.row].title)! + ". Sudah dibaca"
            }
		}
        return cell
    }
	
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let selectedData = changes?.materialChanges[indexPath.row].courseName
        let selectedData = changes?.materialChanges[indexPath.item]
//        let selectedData = Change[indexPath.item]
        self.delegate?.cellWasPressed(withData: selectedData!.id)
//        self.delegate?.cellWasPressed(withData: selectedData!.courseName)
        
    }
    
}
