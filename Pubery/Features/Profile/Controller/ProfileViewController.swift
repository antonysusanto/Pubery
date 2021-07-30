//
//  ProfileViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, EmptyViewCellDelegate {

    @IBOutlet weak var tableProfile: UITableView!
    
    var check = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        navBar()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    func goToNextPage() {
        let storyboard = UIStoryboard(name: "ProfileAdd", bundle: nil)
        let VC = storyboard.instantiateViewController(identifier: "ProfileAddID")
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    func navBar() {
        if check == 0 {
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
            return 400
        } else {
            return 140
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if check == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "emptyID", for: indexPath)) as! EmptyViewCell
            cell.delegate = self
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
