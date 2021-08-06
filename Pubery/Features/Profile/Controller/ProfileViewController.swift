//
//  ProfileViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, EmptyViewCellDelegate, NotEmptyViewCellDelegate, getUpdateDataDelegate, reloadDataViewDelegate, listDataViewDelegate {

    @IBOutlet weak var tableProfile: UITableView!
    
    var userData = CoreDataManager()
    var checkIndex = 0
    var profileChildren: [Children] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//        self.tabBarController?.tabBar.isHidden = false
        profileChildren = userData.fetchChildren()
        navBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navBar()
        tableProfile.reloadData()
        tabBarController?.tabBar.isHidden = false
    }
    
    func updateData() {
        profileChildren = userData.fetchChildren()
        print(profileChildren)
        tableProfile.reloadData()
    }
    
    func reloadData() {
        tableProfile.reloadData()
    }
    
    func goToNextPage() {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ProfileAddID") as! ProfileAddController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func goToPage() {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ProfileAddID") as! ProfileAddController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func navBar() {
        if profileChildren.count == 0 {
            navigationController?.setNavigationBarHidden(true, animated: false)
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
        if indexPath.row == 0 {
            tableView.deselectRow(at: indexPath, animated: false)
        }
        else {
            tableView.deselectRow(at: indexPath, animated: false)
            checkIndex = indexPath.row
            print(checkIndex)
            let thisCell = profileChildren[indexPath.row-1]
            let storyboard = UIStoryboard(name: "Profile", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "AlertID") as! AlertViewController
            vc.getName = thisCell.name
            vc.getGender = thisCell.gender
            vc.delegate = self
            vc.modalPresentationStyle = .overCurrentContext
            vc.providesPresentationContextTransitionStyle = true
            vc.definesPresentationContext = true
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1+profileChildren.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if profileChildren.count == 0 {
            return 450
        } else {
            return 120
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if profileChildren.count == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "emptyID", for: indexPath)) as! EmptyViewCell
            cell.delegate = self
            self.navigationController?.setNavigationBarHidden(true, animated: false)
            return cell
        } else if indexPath.row == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "addID", for: indexPath)) as! AddChildViewCell
            cell.delegate = self
            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "listID", for: indexPath)) as! ListDataViewCell
            let thisCell = profileChildren[indexPath.row-1]
            cell.dataLabel.text = thisCell.name
            cell.delegate = self
            
            if let selectedChild = UserDefaults.standard.string(forKey: "selectedChild"){
                if selectedChild == thisCell.name {
                    cell.dataView.alpha = 1
                } else {
                    cell.dataView.alpha = 0.5
                }
            }
            // Alert for edit or delete
            cell.editOrDelete = {[unowned self] in
                let data = profileChildren[indexPath.row-1]
                let actionSheetController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
                let editAction:UIAlertAction = UIAlertAction(title: "Edit", style: .default) { action -> Void in
                    print("edit pressed")
                    let storyboard = UIStoryboard(name: "ProfileEdit", bundle: nil)
                    let vc = storyboard.instantiateViewController(withIdentifier: "ProfileEditID") as! ProfileEditController
                    vc.oldName = thisCell.name
                    vc.gender = thisCell.gender
                    vc.indexData = profileChildren[indexPath.row-1]
                    vc.delegate = self
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                let deleteAction:UIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { action -> Void in
                    print("delete pressed")
                    print(self.checkIndex)
                    self.userData.deleteChildren(data: data)
                    print(indexPath.row-1)
                    profileChildren = userData.fetchChildren()
                    tableProfile.reloadData()
                }
                let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
                    
                }
                actionSheetController.addAction(editAction)
                actionSheetController.addAction(deleteAction)
                actionSheetController.addAction(cancelAction)
                present(actionSheetController, animated: true, completion: nil)
                
                
                
            }
            return cell
        }
    }
    
}
