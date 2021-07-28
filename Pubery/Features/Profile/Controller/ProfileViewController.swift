//
//  ProfileViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableProfile: UITableView!
    
    var check = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        navBar()
    }
    
    func navBar() {
        if check == 0 {
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if check == 0 {
            return 1
        } else {
            switch section {
            case 0:
                return 1
            case 1:
                return 1
            default:
                return 1
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if check == 0 {
            return 450
        } else {
            return 106
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if check == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "emptyID", for: indexPath)) as! EmptyViewCell
            return cell
        } else {
            switch indexPath.section {
            case 0:
                let cell = (tableView.dequeueReusableCell(withIdentifier: "addID", for: indexPath)) as! AddChildViewCell
                return cell
            case 1:
                let cell = (tableView.dequeueReusableCell(withIdentifier: "listID", for: indexPath)) as! ListDataViewCell
                return cell
            default:
                let cell = (tableView.dequeueReusableCell(withIdentifier: "addID", for: indexPath)) as! AddChildViewCell
                return cell
            }
        }
        return UITableViewCell()
    }
    
}
