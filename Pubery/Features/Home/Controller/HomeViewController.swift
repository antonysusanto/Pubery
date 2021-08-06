//
//  HomeViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var changesModel: ChangeModel!
	var selectedChild: String!
    let data = UserDefaults.standard.value(forKey: "selectedChild")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.setNavigationBarHidden(true, animated: false)
		
		changesModel = HomeData.changesModel
		
		selectedChild = UserDefaults.standard.string(forKey: "selectedChild") ?? ""
        
        tableView.register(CollectionViewTableViewCell.nib(), forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        selectedChild = UserDefaults.standard.string(forKey: "selectedChild")
        showHeader()
        tableView.reloadData()
    }
   
    func showHeader(){
        if selectedChild == "" {
            showEmptyView()
        } else {
            for view in view.subviews {
                if view is FilledProfile {
                   view.removeFromSuperview()
               }
            }
            showFilledView()
        }
    }
    
    func showEmptyView(){
        let emptyView = EmptyProfile(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: 150))
        self.view.addSubview(emptyView)
    }
    
    func showFilledView(){
        let filledView = FilledProfile(frame: CGRect(x: 0, y: 30, width: self.view.frame.height, height: 150), selectedChild: selectedChild)
        self.view.addSubview(filledView)
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return changesModel.responses.count
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		switch indexPath.section {
		case 0:
			let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as! CollectionViewTableViewCell
			cell.changes = changesModel.responses[indexPath.row]
			cell.delegate = self
			return cell
		default:
			return UITableViewCell()
		}
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		switch indexPath.section{
		case 0:
			return 280
		default:
			return 280
		}
	}
}


extension HomeViewController: CustomCellDelegator {
	func cellWasPressed(withData: Courses) {
		let storyboard = UIStoryboard(name: "CourseCover", bundle: nil)
		let vc = storyboard.instantiateViewController(identifier: "goToCover") as! CourseCoverViewController
		vc.selectedCourse = withData
		self.navigationController?.pushViewController(vc, animated: true)
	}
}
