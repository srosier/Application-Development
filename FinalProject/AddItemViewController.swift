import UIKit


//var myIndex = 0
var expenses = Set<Expense>()

var p1Expenses = [String]()
var p2Expenses = [String]()
var p3Expenses = [String]()
var p4Expenses = [String]()
var p5Expenses = [String]()
var p6Expenses = [String]()
var p7Expenses = [String]()
var p8Expenses = [String]()

var p1Total: Double = 0
var p2Total: Double = 0
var p3Total: Double = 0
var p4Total: Double = 0
var p5Total: Double = 0
var p6Total: Double = 0
var p7Total: Double = 0
var p8Total: Double = 0


var finalTotal: Double = 0
var listNames: [String] = []
var listItems: [[Expense]] = []

var listTitle = [String]()


class AddItemViewController: UIViewController {
    
    
    @IBOutlet weak var splitCost: UILabel!
    @IBOutlet weak var totalCost: UILabel!
    
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var itemPrice: UITextField!
    @IBOutlet weak var itemPerson: UITextField!
    
    @IBOutlet weak var listNameLabel: UILabel!
    @IBOutlet weak var listNameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func AddItem(_ sender: Any) {
        guard let item = itemName.text else {
            itemName.text = "insert price"
            return
        }
        guard let price = itemPrice.text else {
            itemPrice.text = "0"
            return
        }
        guard let person = itemPerson.text else {
            itemPerson.text = "insert buyer"
            return
        }
        expenses.insert(Expense(item: item, price: price, person: person))
        
        // Add total money spent per person to each individual array
        
        if person == createListViewController.personArray[0] {
            p1Expenses.append(price)
        } else if person == createListViewController.personArray[1] {
            p2Expenses.append(price)
        } else if person == createListViewController.personArray[2] {
            p3Expenses.append(price)
        } else if person == createListViewController.personArray[3] {
            p4Expenses.append(price)
        } else if person == createListViewController.personArray[4] {
            p5Expenses.append(price)
        } else if person == createListViewController.personArray[5] {
            p6Expenses.append(price)
        } else if person == createListViewController.personArray[6] {
            p7Expenses.append(price)
        } else if person == createListViewController.personArray[7] {
            p8Expenses.append(price)
        }
        
        
        itemName.text = ""
        itemPrice.text = ""
    }
    
    
    
    // Splits total cost
    @IBAction func SplitCosts(_ sender: Any) {
        var total: Double = 0
        
        for expense in expenses {
            if Double(expense.price) != nil {
                total = total + Double(expense.price)!
            } else {
                return
            }
        }
        
        // Total cost of the whole list
        finalTotal = total
        
        // List title
        listTitle.insert(listNameInput.text ?? "", at: 0)
        
        // Calculating total money spent for everyone
        
        for prc in p1Expenses {
            p1Total = p1Total + Double(prc)!
        }
        for prc in p2Expenses {
            p2Total = p2Total + Double(prc)!
        }
        for prc in p3Expenses {
            p3Total = p3Total + Double(prc)!
        }
        for prc in p4Expenses {
            p4Total = p4Total + Double(prc)!
        }
        for prc in p5Expenses {
            p5Total = p5Total + Double(prc)!
        }
        for prc in p6Expenses {
            p6Total = p6Total + Double(prc)!
        }
       
        // Handling history list
        listNames.insert(listNameInput.text ?? "", at: myIndex)
        listItems.insert(Array(expenses), at: myIndex)
        myIndex += 1
        expenses = []
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let expenseListViewController = segue.destination as? ExpenseListViewController else {
            return
        }
        expenseListViewController.expenses = Array(expenses)
    }
}
    
