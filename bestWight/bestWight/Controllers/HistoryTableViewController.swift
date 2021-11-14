//
//  HistoryTableViewController.swift
//  bestWight
//
//  Created by Hesah Alqhtani on 10/11/2021.
//

import UIKit
//Use class for history of users
class HistoryTableViewController: UITableViewController {
    
    var items: [String] = []
    var weight : [Int] = []
        
        let userDefaluts = UserDefaults.standard
        
        
//        user defoults..
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let setItems = userDefaluts.object(forKey: "items") as? [String] {
                self.items = setItems
            }
            if let setItem = userDefaluts.object(forKey: "weight") as? [Int] {
                self.weight = setItem
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
            var textFiledTwo = UITextField()
//            use alert 
            let alert = UIAlertController(title: "Add Names".loclaized, message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "Add".loclaized, style: .default) { action in
                
                guard let text = textFiled.text else {return}
                self.items.append(text)
                self.userDefaluts.set(self.items, forKey: "items")
                self.tableView.reloadData()
                
                guard let text:Int = Int(textFiledTwo.text ?? "nil") else {return}
                print(text)
                self.weight.append(text)
                self.userDefaluts.set(self.weight, forKey: "weight")
                self.tableView.reloadData()
            }
            let cuncal = UIAlertAction(title: "cuncel".loclaized, style: .cancel, handler: nil)
            alert.addTextField { textFiledSet in
                textFiledSet.placeholder = "Write Name...".loclaized
                textFiled = textFiledSet
            }
            alert.addTextField { textFiled in
                textFiled.placeholder = "Write Your Weight. ".loclaized
                textFiledTwo = textFiled
            }
            alert.addAction(cuncal)
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
            
        }
        
        
        
        // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return items.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = items[indexPath.row]
            cell.detailTextLabel?.text = "\(weight[indexPath.row])"
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

