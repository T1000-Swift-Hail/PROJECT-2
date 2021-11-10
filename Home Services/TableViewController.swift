//
//  TableViewController.swift
//  Home Services
//
//  Created by Munira abdullah on 03/04/1443 AH.
//

import UIKit

 // Arry of the name and image in services

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
        
    }
    
    // MARK: - Table view data source
    
   // The number of Services in section
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    // The product name in cout of row section
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
        
    }
    
    // This section is put the product and image in cell of list table view cell
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as?
                ListTableViewCell else { return UITableViewCell() }
        
        // For but Arry in row cell section in services
       
        
        cell.prodact.text = products[indexPath.row].name
        cell.imageProduct.image = products[indexPath.row].image
        
        
        return cell
    }
    
    // This section to add and cansel in favorites List in Order
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
       
        let alert = UIAlertController(title: "Add", message: "Add Serivce", preferredStyle: .actionSheet)
        
        
        let addAction = UIAlertAction(title: "Add", style: .default, handler: { action in
            myFavoritesList.items.append(self.products[indexPath.row])
            
            })
                                             
        let addActionCancel = UIAlertAction(title: "cancel", style: .cancel, handler: { action in

            
            })
        
       // The codeofadd and cancel services
        
        alert.addAction(addAction)
        alert.addAction(addActionCancel)
        
        present(alert, animated: true)
        
        
        
    }
    
    // This section is about height of services in product name and image
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    
  
     
     
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
