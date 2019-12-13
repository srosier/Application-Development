//
//  TableViewController.swift
//  FinalProject
//
//  Created by Sami Rosier on 10/12/2019.
//  Copyright © 2019 Sami Rosier. All rights reserved.
//

import Foundation
import UIKit


var myIndex = 0

// Class for history of lists
class TableViewController: UITableViewController {

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = listNames[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row

        performSegue(withIdentifier: "segue", sender: self)
    }
}


    




