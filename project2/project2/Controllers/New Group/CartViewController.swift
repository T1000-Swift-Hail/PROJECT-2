//
//  CartViewController.swift
//  project2
//
//  Created by Mastorah on 08/11/2021.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
//    class ShoppingCart {
//        var items = [Product]()
//
//    }
    @IBOutlet weak var Edit: UIButton!
   
    @IBOutlet weak var Add: UIButton!
    
    @IBOutlet weak var shoppingCartTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingCartTable.delegate = self
        shoppingCartTable.dataSource = self
        
        // Do any additional setup after loading the view.
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
    

      
    

}
