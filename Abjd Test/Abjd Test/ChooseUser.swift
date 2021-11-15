//
//  ChooseUser.swift
//  Abjd Test
//
//  Created by noyer altamimi on 09/04/1443 AH.
//

import UIKit


class ChooseUser : UITableViewController {
    
    //The defaluts users name.
    var items = ["Mary","John","Thomas"]
    
    //make the defalutsc users name in screen
    let userDefaluts = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let setItems = userDefaluts.object(forKey: "items") as? [String] {
            self.items = setItems
        }


    }
    

    @IBAction func EditItem(_ sender: UIBarButtonItem) {

    if tableView.isEditing {
            tableView.isEditing = false
        } else {
            tableView.isEditing = true
        }
    
    }
    
    
    @IBAction func AddItem(_ sender: Any) {

    var textFiled = UITextField()
        let alert = UIAlertController(title: "Add Names", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { action in
            
    
    
            guard let text = textFiled.text else {return}
            self.items.append(text)
            self.userDefaluts.set(self.items, forKey: "items")
            self.tableView.reloadData()
            
        }
        let cuncal = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addTextField { textFiledSet in
            textFiledSet.placeholder = "Write Name..."
            textFiled = textFiledSet
        }
        alert.addAction(cuncal)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
  
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellUsers", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
   
        
        return cell
    }
    override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            self.userDefaluts.set(self.items, forKey: "items")
        }
        
    }
    
    
    @IBOutlet weak var Names: UIView!
    
    
    
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
