//
//  HomeViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var changesModel: ChangeModel = HomeData.changesModel
    var data = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.setNavigationBarHidden(true, animated: false)
//        navigationController!.navigationBar.sizeToFit()
        
        tableView.register(CollectionViewTableViewCell.nib(), forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        showHeader()
    }
    
    func showHeader(){
        if data == 0 {
            showEmptyView()
        } else if data > 0 {
            showFilledView()
        }
    }
    
    func showEmptyView(){
        let emptyView = EmptyProfile(frame: CGRect(x: 0, y: 35, width: self.view.frame.width, height: 180))
        self.view.addSubview(emptyView)
    }
    
    func showFilledView(){
        let filledView = FilledProfile(frame: CGRect(x: 0, y: 30, width: self.view.frame.height, height: 160))
        self.view.addSubview(filledView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return 1
//        }
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
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return 300
        default:
            return 300
        }
    }
}
