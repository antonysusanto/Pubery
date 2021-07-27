//
//  CollectionViewTableViewCell.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
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
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionViewTableViewCell", bundle: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return changes?.materialChanges.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CourseCollectionViewCell.identifier, for: indexPath) as! CourseCollectionViewCell
        cell.courseLabel.text = changes?.materialChanges[indexPath.row].courseName
        cell.courseImage.image = changes?.materialChanges[indexPath.row].image ?? UIImage()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let bounds = UIScreen.main.bounds
//        let width = bounds.size.width
//        let height = bounds.size.height
////        return CGSize(width: 150, height: 300)
//        return CGSize(width: width, height: height)
//    }
    
}
