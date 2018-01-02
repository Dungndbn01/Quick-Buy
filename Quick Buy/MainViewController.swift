//
//  MainViewController.swift
//  Quick Buy
//
//  Created by DevOminext on 1/2/18.
//  Copyright © 2018 DevOminext. All rights reserved.
//

import UIKit
import LBTAComponents

class MainViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        self.tableView = UITableView(frame: CGRect.zero, style: .grouped)
        self.tableView.backgroundColor = .white
        self.tableView.register(CustomCellForSection1.self, forCellReuseIdentifier: "CellId1")
        self.tableView.register(CustomCellForSection2.self, forCellReuseIdentifier: "CellId2")
        self.tableView.register(CustomCellForSection3.self, forCellReuseIdentifier: "CellId3")
        self.tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "headerId")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 4
        default: return 2
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellId1", for: indexPath) as! CustomCellForSection1
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellId2", for: indexPath) as! CustomCellForSection2
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellId3", for: indexPath) as! CustomCellForSection3
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 100
        default: return 100
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        switch section {
        case 0:
            view.backgroundColor = .clear
            return view
            
        case 1:
            view.backgroundColor = .lightGray
            let headerLabel = UILabel()
            headerLabel.translatesAutoresizingMaskIntoConstraints = false
            headerLabel.backgroundColor = .white
            headerLabel.text = "DEAL BAN CHAY"
            headerLabel.textAlignment = .center
            view.addSubview(headerLabel)
            headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true
            headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 4).isActive = true
            headerLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -4).isActive = true
            headerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
            return view
            
        default:
            view.backgroundColor = UIColor.lightGray
            return view
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0: return 0
        case 1: return 50
        default: return 50
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
