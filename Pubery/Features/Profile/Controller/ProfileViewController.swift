//
//  ProfileViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, EmptyViewCellDelegate, NotEmptyViewCellDelegate, ListDataViewCellDelegate {

    @IBOutlet weak var tableProfile: UITableView!
    
    var userData = CoreDataManager()
    var check = 0
    var profileChildren: [Children] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.tabBarController?.tabBar.isHidden = false
        profileChildren = userData.fetchChildren()
        navBar()
    }
    
    func goToNextPage() {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let VC = storyboard.instantiateViewController(identifier: "ProfileAddID")
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    func goToPage() {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let VC = storyboard.instantiateViewController(identifier: "ProfileAddID")
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    func changeProfile() {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let VC = storyboard.instantiateViewController(identifier: "ProfileAddID")
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    func navBar() {
        if profileChildren.count == 0 {
            navigationItem.title = .none
        } else {
            navigationController?.setNavigationBarHidden(false, animated: false)
        }
    }
    
    func setupView() {
        tableProfile.register(UINib(nibName: "EmptyViewCell", bundle: nil), forCellReuseIdentifier: "emptyID")
        tableProfile.register(UINib(nibName: "AddChildViewCell", bundle: nil), forCellReuseIdentifier: "addID")
        tableProfile.register(UINib(nibName: "ListDataViewCell", bundle: nil), forCellReuseIdentifier: "listID")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1+profileChildren.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if profileChildren.count == 0 {
            return 400
        } else {
            return 120
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if profileChildren.count == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "emptyID", for: indexPath)) as! EmptyViewCell
            cell.delegate = self
            return cell
        } else if indexPath.row == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "addID", for: indexPath)) as! AddChildViewCell
            cell.delegate = self
            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "listID", for: indexPath)) as! ListDataViewCell
        
            let thisCell: Children!
            thisCell = profileChildren[indexPath.row-1]
            cell.dataLabel.text = thisCell.name
            cell.delegate = self
            return cell
        }
        
        return UITableViewCell()
    }
    
}
