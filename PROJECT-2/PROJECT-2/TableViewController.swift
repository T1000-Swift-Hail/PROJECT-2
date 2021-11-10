//
//  ViewController.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 02/04/1443 AH.
//

import UIKit
class TableViewController: UITableViewController {
    
    let product: Product? = nil
    var Listofproducts = [
        Product(name: "darkChocolate", image: UIImage(named: "images-6")!),
        Product(name:"brownChocolate", image: UIImage(named: "images-5")!),
        Product(name:"whiteChocolate", image: UIImage(named: "images-2")!)]
    

    
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Listofproducts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mychocolatetype", for: indexPath) as! ProductCell
        
        cell.nameProduct.text = Listofproducts[indexPath.row].name
        
        cell.productImage.image =  Listofproducts[indexPath.row].image
        
        //cell.textLabel?.text = Listofproducts[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Add", message: "Add product", preferredStyle: .actionSheet)
        let addAction = UIAlertAction(title: "Add", style: .cancel, handler:{ action in
            
            myShoppingCart.items.append(self.Listofproducts[indexPath.row])
            
        })
        
        alert.addAction(addAction)
        present(alert, animated: true)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            self.Listofproducts.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    override func tableView(_ _tableView: UITableView,moveRowAt sourceIndexpath: IndexPath, to destinationIndexpath : IndexPath){
        
        if sourceIndexpath == destinationIndexpath {
            return
        } else {
            
            let listItem = Listofproducts.remove(at: sourceIndexpath.row)
            Listofproducts.insert( listItem, at: destinationIndexpath.row)
        }
        
    }
    
    @IBAction func addItems(_ sender: UIBarButtonItem) {
        
        //getting an instance of UIAlertController
        //getting an instance of UIAlertController
        let alert = UIAlertController(title: "What's Listofproduct ?", message: nil, preferredStyle: .alert)
        
        //Adding Cancel Button
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        //adding a text field
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your product here..."
        })
        
        //adding an action "O.K."
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                
                guard let image = UIImage(named: "images-3") else { return }
                let newProductToAdd = Product(name:name, image: image )
                
                self.Listofproducts.append(newProductToAdd)
                let index = [IndexPath(item: self.Listofproducts.count-1, section: 0)]
                self.tableView.insertRows(at: index, with: .automatic)
                myShoppingCart.items.append(newProductToAdd)
                self.tableView.reloadData()
                
            }
        }))
        
        self.present(alert, animated: true)
        
    }
    
    
    
    
    @IBAction func EditingStyle(_ sender: UIBarButtonItem){
        isEditing.toggle()
        tableView.setEditing(isEditing, animated: true)
    }
    
}

