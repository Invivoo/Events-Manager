//
//  EventListViewController.swift
//  events manager
//
//  Created by Nicolas Erny on 28/11/2018.
//  Copyright © 2018 Invivoo. All rights reserved.
//

import UIKit

class EventListViewController: UITableViewController {

    let itemArray = ["Event1", "Event2", "Event3"]; // Mock values
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

}

