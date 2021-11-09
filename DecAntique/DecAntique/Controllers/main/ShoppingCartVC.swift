//
//  ShoppingCartVC.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 03/04/1443 AH.
//

import UIKit

class ShoppingCartVC: BaseVC {
        
//        let userDefaluts = UserDefaults.standard
        
    @IBOutlet weak var uiTabieview: UITableView!
    
    var dataSource = [ProductModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uiTabieview.dataSource = self
        uiTabieview.delegate = self
        
        dataSource.append(ProductModel(id: 1, product_name: "AAA", price: 150.3, flag: false))
        dataSource.append(ProductModel(id: 2, product_name: "asf", price: 200.0, flag: true))
        dataSource.append(ProductModel(id: 3, product_name: "asf", price: 300.0, flag: true))
        dataSource.append(ProductModel(id: 4, product_name: "asf", price: 150.3, flag: false))
        dataSource.append(ProductModel(id: 5, product_name: "zxc", price: 200.0, flag: true))
        dataSource.append(ProductModel(id: 6, product_name: "123", price: 300.0, flag: true))
        dataSource.append(ProductModel(id: 7, product_name: "gjk", price: 150.3, flag: false))
        dataSource.append(ProductModel(id: 8, product_name: "iop", price: 200.0, flag: true))
        dataSource.append(ProductModel(id: 9, product_name: "tyu", price: 150.3, flag: true))
        dataSource.append(ProductModel(id: 10, product_name: "rtw", price: 300.0, flag: false))
    }
     
    private func callShoppingCartItem(_ indexPath: IndexPath) {
        
        let message = "Would you like to remove this from shopping cart?"
        self.showAlert(title: nil, message: message, positive: "OK", negative: "CANCEL") {
//            self.showLoadingView(view:  self.tabBarController!.view)
//
//            FirebaseAPI.shared.blockUser(data.sender_id, data.room_id, !data.is_block) { (res) in
//                self.hideLoadingView()
//                if res != CONSTANT.CODE_SUCCESS {
//                    self.showAlert(res)
//                }
//            }
        }
    }
}

extension ShoppingCartVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell

        cell.lblProductName.text = "Name \(dataSource[indexPath.row].product_name)"
        cell.lblPrice.text = "\(dataSource[indexPath.row].price) USD"

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let action = UIContextualAction(style: .normal, title: "Remove", handler: { (action, view, completionHandler) in
            
            self.callShoppingCartItem(indexPath)
            completionHandler(true)
        })

        action.image = UIImage(systemName: "trash")
        action.image?.withTintColor(.systemGreen)
        action.backgroundColor = .systemOrange

        let configuration = UISwipeActionsConfiguration(actions: [action])
        return configuration
        
    }
}
