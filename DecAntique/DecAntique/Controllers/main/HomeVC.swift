//
//  HomeVC.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 02/04/1443 AH.
//

import UIKit

class HomeVC: BaseVC {

    @IBOutlet weak var uiTableview: UITableView!
    
    var dataSource = [ProductModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiTableview.delegate = self
        uiTableview.dataSource = self
        
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
        
//        self.tabBarController?.viewControllers?.remove(at: 1)
        //
        addNavButton()
    }
    
    func addNavButton() {
        
        let config = UIImage.SymbolConfiguration(pointSize: 25)
        //left barbutton
        let butExit = UIButton(type: .custom)
        butExit.setImage(UIImage(systemName: "square.and.arrow.up.circle", withConfiguration: config), for: .normal)
        butExit.addTarget(self, action: #selector(self.addTappedRightSignout), for: .touchUpInside)
        butExit.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        butExit.tintColor = .systemBlue
        let barButtonItemExit = UIBarButtonItem(customView: butExit)
        barButtonItemExit.customView?.widthAnchor.constraint(equalToConstant: 35).isActive = true
        barButtonItemExit.customView?.heightAnchor.constraint(equalToConstant: 35).isActive = true
        self.navigationItem.leftBarButtonItem = barButtonItemExit
        
        
        //right barbutton
        let butAdd = UIButton(type: .custom)
        butAdd.setImage(UIImage (systemName: "plus.circle", withConfiguration: config), for: .normal)
        butAdd.addTarget(self, action: #selector(self.addTappedAdd), for: .touchUpInside)
        butAdd.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        butAdd.tintColor = .systemBlue
        let barButtonItemAdd = UIBarButtonItem(customView: butAdd)
        barButtonItemAdd.customView?.widthAnchor.constraint(equalToConstant: 35).isActive = true
        barButtonItemAdd.customView?.heightAnchor.constraint(equalToConstant: 35).isActive = true
        self.navigationItem.rightBarButtonItem = barButtonItemAdd
    }
    
    @objc func addTappedRightSignout(isConfirm: Bool) {
        showAlert(title: "Would you like to log out?", message: nil, positive: "Log Out", negative: "Cancel") {
//            clearUserInfo()
            self.gotoVC("AuthNav", true)
        }
    }
    
    @objc func addTappedAdd(isConfirm: Bool) {
        gotoNavVC("AddNewProduct")
    }

    private func callShoppingCartItem(_ indexPath: IndexPath) {
        
        let message = self.dataSource[indexPath.row].added_cart
        ? "Would you like to remove this from shopping cart?"
        : "Would you like to add this from shopping cart?"
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

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
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
        let flag = dataSource[indexPath.row].added_cart
        let title = flag ? "Remove" : "Add"
        let icon = flag ? UIImage(systemName: "heart") : UIImage(systemName: "heart.fill")
        let action = UIContextualAction(style: .normal, title: title, handler: { (action, view, completionHandler) in
            
            self.callShoppingCartItem(indexPath)
            completionHandler(true)
        })

        action.image = icon
        action.image?.withTintColor(.systemGreen)
        action.backgroundColor = flag ? .systemOrange : .red

        let configuration = UISwipeActionsConfiguration(actions: [action])
        return configuration
        
    }
}
