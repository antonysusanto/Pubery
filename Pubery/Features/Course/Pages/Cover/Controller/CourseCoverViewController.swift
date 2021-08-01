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
    
    var selectedData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materialLabel.text = "\(selectedData!)"
		
//        navigationController?.setNavigationBarHidden(true, animated: false)
        navigationItem.title = .none
        navigationController?.navigationBar.prefersLargeTitles = false
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
//        navigationController?.setNavigationBarHidden(true, animated: false)
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))
        
        
//        print(selectedData)
//        changeTypeLabel.text = selectedData
    }
	
	override func viewWillAppear(_ animated: Bool) {
		navigationController?.setNavigationBarHidden(false, animated: false)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		navigationController?.setNavigationBarHidden(true, animated: false)
	}
//	override func viewDidDisappear(_ animated: Bool) {
//		navigationController?.setNavigationBarHidden(true, animated: false)
//	}
    
    @IBAction func petunjukAction(_ sender: Any) {
//        belum ada folder bagian briefieng nya
//        let storyBoard : UIStoryboard = UIStoryboard(name: "CourseStory", bundle:nil)
//        let vc = storyBoard.instantiateViewController(withIdentifier: "CourseStory") as! CourseStoryViewController
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated:true, completion:nil)
    }
    
    @IBAction func startStoryAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "CourseStory", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "CourseStory") as! CourseStoryViewController
		vc.selectedCourse = .C1_Men
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated:true, completion:nil)
		self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func backAction(){
        //print("Back Button Clicked")
        dismiss(animated: true, completion: nil)
    }
	
    
}
