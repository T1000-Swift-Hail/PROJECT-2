//
//  TableViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 04/04/1443 AH.
//

// MARK: - tableview code

import UIKit

class TableViewController: UITableViewController  {
    
    var soppingList = ["electric drums 1 ","electric drums 2","electric drums 3"]
    let defaults = UserDefaults.standard
    var array = ["Hello", "World"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        defaults.set(soppingList, forKey: "SavedArray")
        if let setItmes = defaults.array(forKey: "SavedArray") as? [String]{
            self.soppingList = setItmes
            
        }
    }
    
    @IBAction func editBottn(_ sender: Any) {
        
        
        if tableView.isEditing {
            tableView.isEditing = false
        } else {
            tableView.isEditing = true
        }
    }
    
    @IBAction func addBotton(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "What are you puying?", message: nil, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "write here..."
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let purchase = alert.textFields?.first?.text {
                print("Your purchases: \(purchase)")
                self.soppingList.append(purchase)
                self.defaults.set(self.soppingList, forKey: "SavedArray")
                self.tableView.reloadData()
                
            }
            
        }
                                      
                                     )
                        
        )
        
        self.present(alert, animated: true)
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return soppingList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        cell.textLabel?.text = soppingList[indexPath.row]
        
        
        return cell
    }
    override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            soppingList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            self.defaults.set(self.soppingList, forKey: "SavedArray")
            
        }
        
        
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
        
        if sourceIndexPath == destinationIndexPath {
            return
        } else {
            let movedItem = soppingList[sourceIndexPath.row]
            soppingList.remove(at: sourceIndexPath.row)
            soppingList.insert(movedItem, at: destinationIndexPath.row)
            
        }
    }
}
