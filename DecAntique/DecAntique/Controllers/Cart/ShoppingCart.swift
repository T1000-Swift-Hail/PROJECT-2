//
//  ShoppingCart.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 03/04/1443 AH.
//

import UIKit

class ShoppingCart: UITableViewController {

        var items = ["aaa","bbb","ccc"]
        
//        let userDefaluts = UserDefaults.standard
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
//
//            if let setItems = userDefaluts.object(forKey: "items") as? [String] {
//                self.items = setItems
//            }


        }
        
    @IBAction func selectItems(_ sender: UIBarButtonItem) {
        isEditing = !isEditing

    }
    
    @IBAction func deleteItem(_ sender: Any) {
        
        if let selectedRows = tableView.indexPathsForSelectedRows {
            // 1
            var items = [String]()
            for indexPath in selectedRows  {
                items.append(items[indexPath.row])
            }
            // 2
            for item in items {
                if let index = items.firstIndex(of: item) {
                    items.remove(at: index)
                }
            }
            // 3
            tableView.beginUpdates()
            tableView.deleteRows(at: selectedRows, with: .automatic)
            tableView.endUpdates()
        }
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
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCart", for: indexPath)
            cell.textLabel?.text = items[indexPath.row]
            // Configure the cell...
            
            return cell
        }
    
        override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
//
//            if editingStyle == .delete {
//
//                items.remove(at: indexPath.row)
//                tableView.deleteRows(at: [indexPath], with: .automatic)
//
//
//            }
            
            
        }
        override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
//            if sourceIndexPath == destinationIndexPath {
//                return
//            } else {
//                let movedItem = items[sourceIndexPath.row]
//                items.remove(at: sourceIndexPath.row)
//                items.insert(movedItem, at: destinationIndexPath.row)
//
//            }
//        }
    
        
    


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    }
    
}
