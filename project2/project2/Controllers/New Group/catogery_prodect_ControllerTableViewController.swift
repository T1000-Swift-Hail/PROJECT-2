//
//  catogery prodect ControllerTableViewController.swift
//  project2
//
//  Created by Mastorah on 08/11/2021.
//

import UIKit

class catogery_prodect_ControllerTableViewController: UITableViewController {
    



    @IBOutlet var tableview: UITableView!
    
    var arrProduct = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        let product1 = Product(name: "ABLWAS", price: 34, photo: UIImage(named: "birds food-1")!)
       let product2 = Product(name: "kitcat", price: 50, photo: UIImage(named: "catfood")!)
        let product3 = Product(name: "Apol", price: 34, photo: UIImage(named: "dog food2")!)
        let product4 = Product(name: "bird bed", price: 40, photo: UIImage(named: "othersupplies to birds2")!)
        let product5 = Product(name: "dog bed", price: 80, photo: UIImage(named: "othersupplies to dog3")!)
       let product6 = Product(name: "lifecat", price: 70, photo: UIImage(named: "catfood1")!)
        let product7 = Product(name: "schesir", price: 100, photo: UIImage(named: "dogfood3")!)
        let product8 = Product(name: "versele", price: 90, photo: UIImage(named: "dog food4")!)
        let product9 = Product(name: "verselee", price: 70, photo: UIImage(named: "cat food2")!)
       let product10 = Product(name: "versl", price: 30, photo: UIImage(named: "othersupplies to cat4")!)
        arrProduct.append(product1)
       arrProduct.append(product2)
        arrProduct.append(product3)
        arrProduct.append(product4)
       arrProduct.append(product5)
       arrProduct.append(product6)
        arrProduct.append(product7)
        arrProduct.append(product8)
        arrProduct.append(product9)
       arrProduct.append(product10)
       }
    
    
   override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProduct.count
}
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Cell
    
        cell.productName.text = arrProduct[indexPath.row].name
        cell.productprice.text = "\(arrProduct[indexPath.row].price)"
        cell.imgproduct.image = arrProduct[indexPath.row].photo
        
        return cell
        
    }

}
