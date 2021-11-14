//////
//////  CartViewController.swift
//////  MY_Second_Project
//////
//////  Created by Njoud Alrshidi on 04/04/1443 AH.
//////
////
import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   @IBOutlet weak var cartTable: UITableView!
    
    // func editng the product in shopping cart
   @IBAction func editng(_ sender: UIBarButtonItem) {
    if cartTable.isEditing {
    cartTable.isEditing = false
      }
       else {
    cartTable.isEditing = true
        }
    }
    override func viewDidLoad() {
    super.viewDidLoad()

    cartTable.delegate = self
    cartTable.dataSource = self
//Cheak if Shopping Cart is empty
    if myShoppingCart.products.count == 0{
    cartTable.isHidden = true
//Display img Error Photo in shopping cart
    let imgErrorPhoto = UIImageView(frame: CGRect(x: 50 , y: 100, width: self.view.frame.width - 100 , height: 200 ))
    imgErrorPhoto.image = UIImage(systemName: "cart")
    imgErrorPhoto.tintColor = UIColor.gray
    self.view.addSubview(imgErrorPhoto)

//Display Label in shopping cart
    let lblMsg = UILabel(frame: CGRect(x: imgErrorPhoto.frame.minX, y: imgErrorPhoto.frame.maxY + 15, width:imgErrorPhoto.frame.width, height: 30))
        lblMsg.text = "The Shopping Cart is Empty!".localized
        lblMsg.textAlignment = .center
        self.view.addSubview(lblMsg)
       }
            
    }
        
    override func viewWillAppear(_ animated: Bool) {
        cartTable.reloadData()
    }



    // MARK: - Table view data source
    
   // Return the number of rows
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myShoppingCart.products.count
    }
    //Return the number of sections
func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }

//Configure the cell...
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier:  "cellcart" , for: indexPath)
//Add perfume Name & image in shopping cart
cell.textLabel?.text = myShoppingCart.products[indexPath.row].perfumeName
cell.imageView?.image = myShoppingCart.products[indexPath.row].perfumeImg

       return cell
            
      }
    
// Support editing the table view ,delete Product from shopping cart
func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {

if editingStyle == .delete {
myShoppingCart.products.remove(at: indexPath.row)
tableView.deleteRows(at: [indexPath], with: .automatic)

        }
    }
//Support editing the table view, destination Product from shopping cart
func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
if sourceIndexPath == destinationIndexPath {

       return
    
       }
    
    else {
         let movedItem = myShoppingCart.products[sourceIndexPath.row]
         myShoppingCart.products.remove(at: sourceIndexPath.row)
         myShoppingCart.products .insert(movedItem, at: destinationIndexPath.row)

        }
    }
}

