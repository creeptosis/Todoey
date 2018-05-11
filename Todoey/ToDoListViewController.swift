import UIKit

class ToDoListViewController : UITableViewController {
    
    //Vars
    var itemsArray = ["Find Mike", "Buy Eggs", "Call Ejay"]
    var isCellChecked:Bool = false
    //Outlets
    
    override func viewDidLoad() {

        super.viewDidLoad()
        self.title = "To Do Meister"
//        self.tableView.allowsSelection = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - TableViewDelegateMethods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = itemsArray[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemsArray[indexPath.row])
        
        if !isCellChecked {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        isCellChecked = !isCellChecked
        
        tableView.deselectRow(at: indexPath, animated: true)

    }


}

