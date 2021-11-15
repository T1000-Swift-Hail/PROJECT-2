//
//  listofbrandsTableViewController.swift
//  PROJECT-2
//
//  Created by Mac on 08/11/2021.
//

import UIKit
class ListofbrandsTableViewController: UITableViewController {
    
    var products = Product()
    var allProducts: [Product] = []
    var selectedProducts = [String]()
    var userDefalts = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        allProducts = products.getProducts()
        
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allProducts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Listofproductcell
        
        cell.prodcut = allProducts[indexPath.row]
        cell.nameClothing.text = allProducts[indexPath.row].productName
        cell.brandsImage.image = allProducts[indexPath.row].uiImage
        cell.productImage.image = allProducts[indexPath.row].tshirtImage
        cell.prodcutImageColors = allProducts[indexPath.row].prodcutImageColors
        cell.prodcut = allProducts[indexPath.row]
        
        
        guard let priceClothings = allProducts [indexPath.row].price else { return UITableViewCell() }
        cell.priceClothing.text = "price: ".localization + "\(priceClothings) SAR"
        
        
        guard let quantityProducts = allProducts [indexPath.row].quantity else { return UITableViewCell() }
        cell.quantityProduct.text = "quantity: ".localization + "\(quantityProducts)" + "pieces available".localization
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
}

extension String {
    
    var localization:String {
        return NSLocalizedString(self, comment: "")
    }
    
}
