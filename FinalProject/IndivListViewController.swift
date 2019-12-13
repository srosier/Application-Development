
import Foundation
import UIKit

// Class for expense list in history
class IndivListViewController: UIViewController {
    
    @IBOutlet weak var expensesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expensesLabel.text = "\(listItems[myIndex])"
    }
}
