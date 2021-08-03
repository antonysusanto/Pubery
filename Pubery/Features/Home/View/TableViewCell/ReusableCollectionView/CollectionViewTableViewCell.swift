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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    @IBAction func goToCover(_ sender: Any) {
//        cellTapped?()
//    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionViewTableViewCell", bundle: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return changes?.materialChanges.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CourseCollectionViewCell.identifier, for: indexPath) as! CourseCollectionViewCell
        cell.courseLabel.text = changes?.materialChanges[indexPath.row].title
		cell.courseImage.image = UIImage(named: changes?.materialChanges[indexPath.row].imageName ?? "page1")
		
//		cell.courseImage.image = (changes?.materialChanges[indexPath.row].checklist ?? false) ? UIImage(named: "checkmark.circle.fill") : UIImage()
//        cell.tapActionGoToCourse = {
//
//        }
        
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
