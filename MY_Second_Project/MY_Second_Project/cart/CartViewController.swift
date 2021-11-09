//
//  CartViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 04/04/1443 AH.
//

import UIKit

class CartViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var cartTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cartTable.delegate = self
        cartTable.dataSource = self
  
    }
    
    @IBAction func editng(_ sender: UIBarButtonItem) {
        if cartTable.isEditing {
            cartTable.isEditing = false
        } else {
            cartTable.isEditing = true
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        cartTable.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.product.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellcart") as! UITableViewCell
        cell.textLabel?.text = cart.product[indexPath.row].perfumeName
        cell.imageView?.image = cart.product[indexPath.row].perfumeImg
        return cell
    }
//    override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
//
//        if editingStyle == .delete {
//t
//            Perffume.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//
//
//        }
//
//
//    }
//    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
//        if sourceIndexPath == destinationIndexPath {
//            return
//        } else {
//            let movedItem = items[sourceIndexPath.row]
//            items.remove(at: sourceIndexPath.row)
//            items.insert(movedItem, at: destinationIndexPath.row)
//
//        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


