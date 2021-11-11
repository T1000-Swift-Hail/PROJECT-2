////
////  CartViewController.swift
////  MY_Second_Project
////
////  Created by Njoud Alrshidi on 04/04/1443 AH.
////
//
//import UIKit
//
//class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//    
//    let userDefaluts = UserDefaults.standard
//    
//    @IBOutlet weak var cartTable: UITableView!
//    
//    @IBAction func editng(_ sender: UIBarButtonItem) {
//        if cartTable.isEditing {
//            cartTable.isEditing = false
//        } else {
//            cartTable.isEditing = true
//        }
//    }
//        override func viewDidLoad() {
//        super.viewDidLoad()
//        
//            cartTable.delegate = self
//            cartTable.delegate = self
//            
//        if let setitems = userDefaluts.object(forKey: "items") as? [String] {
//            self.items = setitems
//        }}
//        
//    
//    
//
//
//    // MARK: - Table view data source
//    
//     func numberOfSections(in tableView: UITableView) -> Int {
//                return 1
//            }
//    
//     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//         return myShoppingCart.products.count
//            }
//     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    
//                let celll = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath)
//         celll.textLabel?.text = myShoppingCart.products[indexPath.row].perfumeName
//                return celll
//            }
//     func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
//        
//        if editingStyle == .delete {
//            
//            myShoppingCart.products.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//            
//        }
//    }
//     func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
//        if sourceIndexPath == destinationIndexPath {
//            return
//        } else {
//            let movedItem = myShoppingCart.products[sourceIndexPath.row]
//            myShoppingCart.products.remove(at: sourceIndexPath.row)
//            items.insert(movedItem, at: destinationIndexPath.row)
//            
//        }
//    }
//
//}
//
//
//
////     func addItems(_ sender: Any) {
////
////
////                var textFiled = UITextField()
////                let alert = UIAlertController(title: "Add Fruits", message: "", preferredStyle: .alert)
////                let action = UIAlertAction(title: "Add", style: .default) { action in
////
////                    guard let text = textFiled.text else {return}
////                    self.itemsFruits.append(text)
////                    self.userDefaluts.set(self.itemsFruits, forKey: "itemsFruits")
////                    self.tableView.reloadData()
////
////                }
////                let cuncal = UIAlertAction(title: "cuncel", style: .cancel, handler: nil)
////                alert.addTextField { textFiledSet in
////                    textFiledSet.placeholder = "Add Fruits name..."
////                    textFiled = textFiledSet
////                }
////                alert.addAction(cuncal)
////                alert.addAction(action)
////
////                present(alert, animated: true, completion: nil)
////}
//    
//
//
////-----------------------------------------------------
//
////    override func viewWillAppear(_ animated: Bool) {
////        cartTable.reloadData()
////    }
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////
////    }
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////
////    }
////    override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
////
////        if editingStyle == .delete {
////t
////            Perffume.remove(at: indexPath.row)
////            tableView.deleteRows(at: [indexPath], with: .automatic)
////
////
////        }
////
////
////    }
////    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
////        if sourceIndexPath == destinationIndexPath {
////            return
////        } else {
////            let movedItem = items[sourceIndexPath.row]
////            items.remove(at: sourceIndexPath.row)
////            items.insert(movedItem, at: destinationIndexPath.row)
////
////        }
//    
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//
