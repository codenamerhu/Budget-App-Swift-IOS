//
//  ProfileOptionsTableViewController.swift
//  Business
//
//  Created by SBI Admin on 2020/05/29.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class ProfileOptionsTableViewController: UITableViewController {
    
    
    @IBOutlet var optionsTable: UITableView!
    
    var icons = ["settings","security","notification-1","chart-1"]
    
    var titles = ["Profiles ettings","Privacy","Notifications","Charts"]
    
    var discriptions = ["Update and modify profile","Change yur password","Change your notifications settings","Edit graphics"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        optionsTable.dataSource = self
        optionsTable.delegate = self
    }

    // MARK: - Table view data source

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return icons.count
    } */

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        return icons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath) as! ProfileOptionCell
        
        cell.optionsBackgroundView.UIViewCorners_10px()
        
        cell.optionsIcon.image = UIImage(named: icons[indexPath.row])
        cell.optionsTitle.text = titles[indexPath.row]
        cell.optionsDiscription.text = discriptions[indexPath.row]
        return cell
    }

   

}

class ProfileOptionCell : UITableViewCell {
    @IBOutlet weak var optionsIcon: UIImageView!
    
    @IBOutlet weak var optionsDiscription: UILabel!
    @IBOutlet weak var optionsTitle: UILabel!
    @IBOutlet weak var optionsContainerView: UIImageView!
    @IBOutlet weak var optionsBackgroundView: UIView!
}
