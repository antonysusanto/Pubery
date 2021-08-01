//
//  CourseCoverViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class CourseCoverViewController: UIViewController {

    @IBOutlet weak var changeTypeLabel: UILabel!
    @IBOutlet weak var materialLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var childrenImage: UIImageView!
    @IBOutlet weak var petunjukButton: UIButton!
    @IBOutlet weak var mulaiButton: UIButton!
    
    var selectedData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.changeTypeLabel.text = "\(String(describing: selectedData))"
//        navigationController?.setNavigationBarHidden(true, animated: false)
//        navigationItem.title = .none
//        navigationController?.setNavigationBarHidden(true, animated: false)
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))
        
        
//        print(selectedData)
//        changeTypeLabel.text = selectedData
    }
    
    @IBAction func petunjukAction(_ sender: Any) {
//        belum ada folder bagian briefieng nya
        let storyBoard : UIStoryboard = UIStoryboard(name: "CourseStory", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "CourseStroyId") as! CourseStoryViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated:true, completion:nil)
    }
    
    @IBAction func startStoryAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "CourseStory", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "CourseStroyId") as! CourseStoryViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated:true, completion:nil)
    }
    
    @objc func backAction(){
        //print("Back Button Clicked")
        dismiss(animated: true, completion: nil)
    }
    
}

// https://stackoverflow.com/questions/48243234/show-back-button-without-navigation-view-controller/48243301
