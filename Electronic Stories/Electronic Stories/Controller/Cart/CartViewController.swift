//
//  CartViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class CartViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var carttableView: UITableView!
    
    let sections = ["iPhone Shopping Cart", "Android Shopping Cart"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        carttableView.delegate=self
        carttableView.dataSource = self
        
    }
    
    @IBAction func editCart(_ sender: Any) {
        carttableView.isEditing = !carttableView.isEditing
    }
    
    override func viewWillAppear(_ animated: Bool) {
        carttableView.reloadData()
      }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
  
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return shoppingCart.item.count
        }
        else {
            return shoppingCartAndroid.products.count
        }
        
    }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell" , for : indexPath)
          
          if indexPath.section == 0 {
              cell.textLabel?.text = shoppingCart.item[indexPath.row].name
              cell.imageView?.image = shoppingCart.item[indexPath.row].photo
          } else {
              cell.textLabel?.text = shoppingCartAndroid.products[indexPath.row].name
              cell.imageView?.image = shoppingCartAndroid.products[indexPath.row].photo
          }
        return cell
      }

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        shoppingCart.item.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "") {
          ( action, view, complettionHandler) in
          
            if indexPath.section == 0 {
                shoppingCart.item.remove(at: indexPath.row)
            } else {
                shoppingCartAndroid.products.remove(at: indexPath.row)
            }

            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            complettionHandler(true)
        }
        
        let favoriteAction = UIContextualAction(style: .normal, title: "") { (_, _, _) in
            print("Add To Favorite")
        }
        
        favoriteAction.image = UIImage(systemName: "heart")
        
        deleteAction.image = UIImage (systemName: "trash")
        
        return UISwipeActionsConfiguration(actions: [deleteAction,favoriteAction])
    }

    
    
}
