//
//  TableViewControllerAddToCart.swift
//  PROJECT-2
//
//  Created by Mac on 10/11/2021.
//

import UIKit

class ViewControllerAddToCart: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var checkOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 150
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.reloadData()
    }
}

extension ViewControllerAddToCart : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myShoppingCart.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CheckOutTableViewCell
        
        // add product secleted to the cart
        cell.productImage.image = myShoppingCart.products[indexPath.row].tshirtImage
        cell.ProducType.text = myShoppingCart.products[indexPath.row].productName
        cell.productPrice.text = "\(myShoppingCart.products[indexPath.row].price!)SAR"
        cell.productColor.text = "\(myShoppingCart.products[indexPath.row].productColor?.rawValue ?? "")"
        cell.productSize.text = "\(myShoppingCart.products[indexPath.row].productSize?.rawValue ?? "")"
        cell.productQuantity.text = "\(myShoppingCart.products[indexPath.row].quantity!) pieces available"
        
        return cell
        
    }
}




