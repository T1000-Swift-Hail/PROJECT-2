//
//  TableViewControllerAddToCart.swift
//  PROJECT-2
//
//  Created by Mac on 10/11/2021.
//

import UIKit

class ViewControllerAddToCart: UIViewController {
    
    var porducts : [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var checkoutProducts: UIButton!
    
    let userDefalts = UserDefaults.standard
    
    override func viewDidLoad() {
    super.viewDidLoad()
  
    tableView.delegate = self
    tableView.dataSource = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        guard let setProducts = userDefalts.object(forKey: "products") as? [String] else { return }
            print("CCCCC")
        porducts = setProducts

        print("our product are:")
        print(porducts)
        
        tableView.reloadData()
    }
}
    
extension ViewControllerAddToCart : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        porducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CheckOutTableViewCell
        
        //cell.productImage.image = porducts[indexPath.row].tshirtImage
        cell.productQuantity.text = "\(String(describing: porducts[indexPath.row]))"
        
        return cell
     
    }
}




