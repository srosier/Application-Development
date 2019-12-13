import UIKit

class ExpenseListViewController: UITableViewController{
    
    var expenses: [Expense] = []
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let expense = expenses[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(expense.item) price: \(expense.price)$, bought by:  \(expense.person)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

