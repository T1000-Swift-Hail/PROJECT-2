//
//  CartViewController.swift
//  project2
//
//  Created by Mastorah on 08/11/2021.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   // cart class to add or delete product

    @IBOutlet weak var Add: UIButton!
    
    @IBOutlet weak var shoppingCartTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingCartTable.delegate = self
        shoppingCartTable.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        shoppingCartTable.reloadData()
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingCart.items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        
                cell.textLabel?.text = shoppingCart.items[indexPath.row].name
        
                cell.imageView?.image = shoppingCart.items[indexPath.row].photo
                
        return cell
            }
    
    @IBAction func editing(_ sender: UIButton) {
        
        
        if shoppingCartTable.isEditing {
            shoppingCartTable.isEditing = false
        }else {
            shoppingCartTable.isEditing = true
         }
        
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        switch editingStyle {
        case .delete :
            shoppingCart.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        default :
            return
        }
        
    }
    
    
      
    
}

