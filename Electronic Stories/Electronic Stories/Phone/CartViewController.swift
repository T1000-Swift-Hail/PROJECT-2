//
//  CartViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class CartViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var carttableView: UITableView!
    
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingCart.item.count
    }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell" , for : indexPath)
          cell.textLabel?.text = shoppingCart.item[indexPath.row].name
          cell.imageView?.image = shoppingCart.item[indexPath.row].photo
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
           shoppingCart.item.remove(at :indexPath.row)
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
