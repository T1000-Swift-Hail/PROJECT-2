//
//  ViewController.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 02/04/1443 AH.
//

import UIKit


class TableViewController: UITableViewController {

    let product: Product? = nil
    var Listofproducts = ["darkGray/chocolate","brownchocolate","whitechocolate"]
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        let products = product?.getProducts()
        // Do any additional setup after loading the view.
  
 //       var products = ["product":"string","product2":"string","product3":"string"]
       
        if let savedArray = defaults.array(forKey: "List of Products") as? [String]{
            Listofproducts = savedArray
        
        
            func toggleEditing(_ sender: Any) {
            isEditing.toggle()
                tableView.setEditing(isEditing, animated: true)
        }
            func add(_ sender: UIBarButtonItem) {
            //getting an instance of UIAlertController
              let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
            //Adding Cancel Button
       
           
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                
                //adding a text field
                alert.addTextField(configurationHandler: { textField in
                 textField.placeholder = "Input your name here..."
                })
                
                //adding an action "O.K."
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self] action in

                  if let name = alert.textFields?.first?.text {
                    
       }
                
                    
// Override to support editing the table view.
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        // Delete the row from the data source
        self.Listofproducts.remove(at: indexPath.row)
        
    }
                }
                 }
