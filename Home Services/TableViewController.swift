//
//  TableViewController.swift
//  Home Services
//
//  Created by Munira abdullah on 03/04/1443 AH.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    
    let products = [
        Product(name: "Electrecial", image: UIImage(named: "images")!),
        Product(name: "Air conditioning", image: UIImage(named: "images-1")!),
        Product(name: "Plumbing", image: UIImage(named: "images-2")!),
        Product(name: "Cleaning", image: UIImage(named: "download-2")!),
        Product(name: "Satellite", image: UIImage(named: "download-3")!),
        Product(name: "Camera", image: UIImage(named: "images-3")!)
    ]
    

    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as?
                ListTableViewCell else { return UITableViewCell() }
        
        
        cell.prodact.text = products[indexPath.row].name
        cell.imageProduct.image = products[indexPath.row].image
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
       
        let alert = UIAlertController(title: "Add", message: "Add Serivce", preferredStyle: .actionSheet)
        
        
        let addAction = UIAlertAction(title: "Add", style: .default, handler: { action in
            myFavoritesList.items.append(self.products[indexPath.row])
            
            })
                                             
        let addActionCancel = UIAlertAction(title: "cancel", style: .cancel, handler: { action in

            
            })
        alert.addAction(addAction)
        alert.addAction(addActionCancel)
        
        present(alert, animated: true)
        
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    
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
