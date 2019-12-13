// USED FIREBASE FOR LOG IN/OUT AND REGISTRATION FUNCTIONALITY

import UIKit
import Firebase

class createListViewController: UIViewController {
    
    static var personArray = [String]()

    @IBOutlet weak var P1: UITextField!
    @IBOutlet weak var P2: UITextField!
    @IBOutlet weak var P3: UITextField!
    @IBOutlet weak var P4: UITextField!
    @IBOutlet weak var P5: UITextField!
    @IBOutlet weak var P6: UITextField!
    @IBOutlet weak var P7: UITextField!
    @IBOutlet weak var P8: UITextField!
    
    @IBOutlet weak var createList: UIButton!
    @IBOutlet weak var showLists: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func createList(_ sender: Any) {
    
        // Initializing people
        let p1 = P1.text ?? ""
        let p2 = P2.text ?? ""
        let p3 = P3.text ?? ""
        let p4 = P4.text ?? ""
        let p5 = P5.text ?? ""
        let p6 = P6.text ?? ""
        let p7 = P7.text ?? ""
        let p8 = P8.text ?? ""
        
       
        // Inserting people into personArray
        createListViewController.personArray.insert(p1, at: 0)
        createListViewController.personArray.insert(p2, at: 1)
        createListViewController.personArray.insert(p3, at: 2)
        createListViewController.personArray.insert(p4, at: 3)
        createListViewController.personArray.insert(p5, at: 4)
        createListViewController.personArray.insert(p6, at: 5)
        createListViewController.personArray.insert(p7, at: 6)
        createListViewController.personArray.insert(p8, at: 7)
        
        print(createListViewController.personArray)
        // print(p1Expenses)
        //print(p1Total)
    }
    
    // USED FIREBASE FOR LOG IN/OUT AND REGISTRATION FUNCTIONALITY
    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
}
