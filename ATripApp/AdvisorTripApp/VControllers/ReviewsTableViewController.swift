//
//  ReviewsTableViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//


import UIKit

class ReviewsTableViewController: UITableViewController {
    
    
    var items = ["Love the fact that I can view and manage","great app to see the essenation places to visit","easy to use and helpful app"]
    
    let userDefaluts = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let setItems = userDefaluts.object(forKey: "items") as? [String] {
            self.items = setItems
        }


    }
    @IBAction func editng(_ sender: UIBarButtonItem) {
        if tableView.isEditing {
            tableView.isEditing = false
        } else {
            tableView.isEditing = true
        }
    }
    @IBAction func addItem(_ sender: Any) {
        
    
    var textFiled = UITextField()
    let alert = UIAlertController(title: "Share your opinion", message: "", preferredStyle: .alert)
    let action = UIAlertAction(title: "Post", style: .default) { action in
            
        guard let text = textFiled.text else {return}
        self.items.append(text)
        self.userDefaluts.set(self.items, forKey: "items")
        self.tableView.reloadData()
        }

        alert.addTextField { textFiledSet in
            textFiledSet.placeholder = "Write your opinion..."
            textFiled = textFiledSet
        }

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
   
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        // Configure the cell...
        
        return cell
    }
    override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
        if sourceIndexPath == destinationIndexPath {
            return
        } else {
            let movedItem = items[sourceIndexPath.row]
            items.remove(at: sourceIndexPath.row)
            items.insert(movedItem, at: destinationIndexPath.row)
            
        }
    }
}
