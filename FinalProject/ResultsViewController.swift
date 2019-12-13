//
//  ResultsViewController.swift
//  FinalProject
//
//  Created by Sami Rosier on 12/12/2019.
//  Copyright © 2019 Sami Rosier. All rights reserved.
//

import Foundation
import UIKit


class ResultsViewController: UIViewController {
    
    @IBOutlet weak var listName: UILabel!
    @IBOutlet weak var DebtP1: UILabel!
    @IBOutlet weak var DebtP2: UILabel!
    @IBOutlet weak var DebtP3: UILabel!
    @IBOutlet weak var DebtP4: UILabel!
    @IBOutlet weak var DebtP5: UILabel!
    @IBOutlet weak var DebtP6: UILabel!
    @IBOutlet weak var DebtP7: UILabel!
    @IBOutlet weak var DebtP8: UILabel!
    @IBOutlet weak var totalCost: UILabel!
    
    let p1 = createListViewController.personArray[0]
    let p2 = createListViewController.personArray[1]
    let p3 = createListViewController.personArray[2]
    let p4 = createListViewController.personArray[3]
    let p5 = createListViewController.personArray[4]
    let p6 = createListViewController.personArray[5]
    let p7 = createListViewController.personArray[6]
    let p8 = createListViewController.personArray[7]
    
    @IBAction func toHome(_ sender: Any) {
        createListViewController.personArray = []
        listTitle = []
        p1Expenses = []
        p2Expenses = []
        p3Expenses = []
        p4Expenses = []
        p5Expenses = []
        p6Expenses = []
        p7Expenses = []
        p8Expenses = []
        p1Total = 0
        p2Total = 0
        p3Total = 0
        p4Total = 0
        p5Total = 0
        p6Total = 0
        p7Total = 0
        p8Total = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Removing whitespaces from people array
        createListViewController.personArray.removeAll{ $0 == ""}
        print(createListViewController.personArray)
        
        // Defining participants
        let participants: Double = Double(createListViewController.personArray.count)
        //print(createListViewController.personArray.count)
        //print(p1Total)
        //print(rest)
        
        // Handling results labels
        listName.text =  listTitle[0]
        totalCost.text = "The total cost is \(String(finalTotal))$"
        
        
        // Don't display debt of nonexistent people
        if p1 != "" {
            DebtP1.text = "\(p1) needs to receive \(round(p1Total/participants))$ per person"
        }
        if p2 != "" {
            DebtP2.text = "\(p2) needs to receive \(round(p2Total/participants))$ per person"
        }
        if p3 != "" {
            DebtP3.text = "\(p3) needs to receive \(round(p3Total/participants))$ per person"
        }
        if p4 != "" {
            DebtP4.text = "\(p4) needs to receive \(round(p4Total/participants))$ per person"
        }
        if p5 != "" {
            DebtP5.text = "\(p5) needs to receive \(round(p5Total/participants))$ per person"
        }
        if p6 != "" {
            DebtP6.text = "\(p6) needs to receive \(round(p6Total/participants))$ per person"
        }
        if p7 != "" {
            DebtP7.text = "\(p7) needs to receive \(round(p7Total/participants))$ per person"
        }
        if p8 != "" {
            DebtP8.text = "\(p8) needs to receive \(round(p8Total/participants))$ per person"
        }
    }
}
