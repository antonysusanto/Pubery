//
//  StretchingViewController.swift
//  Pubery
//
//  Created by Carlos Gamaliel Manurung on 27/08/21.
//

import UIKit

class StretchingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var myCollection: UICollectionView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var buttonDone: UIButton!
    @IBOutlet weak var buttonClose: UIButton!
    
    var imageName = ["c8_mini","c8_mini2","c8_mini3","c8_mini4","c8_minifinish"]
    var timer = Timer()
    var countDown = Timer()
    var indexCell = 0
    var count = 5
    let customAlert = CustomAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.slideImage), userInfo: nil, repeats: true)
            self.countDown = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.countLabel), userInfo: nil, repeats: true)
        }
        descLabel.text = "\(count)"
        customAlert.showAlert(with: "Ikuti gerakan seperti pada gambar", on: self)
    }
    
    @objc func slideImage() {
        if indexCell < imageName.count - 1{
            indexCell = indexCell + 1
        } else {
            timer.invalidate()
        }
        myCollection.scrollToItem(at: IndexPath(item: indexCell, section: 0), at: .right, animated: true)
    }
    
    @objc func countLabel() {
        if indexCell < imageName.count - 1 {
            if count == 1 {
                count = 5
            } else {
                count -= 1
            }
            descLabel.text = "\(count)"
        } else {
            descLabel.text = "Kerja bagus, Kamu telah berhasil mengontrol emosimu!"
            buttonDone.isHidden = false
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollection.dequeueReusableCell(withReuseIdentifier: "stretchingCell", for: indexPath) as! ComponentViewCell
        cell.myImage.image = UIImage(named: imageName[indexPath.row])
        return cell
    }
    
    @IBAction func close(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func done(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
}
