//
//  CartViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class CartViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var carttableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        carttableView.delegate=self
        carttableView.dataSource = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        carttableView.reloadData()
      }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingCart.item.count
    }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell") as! UITableViewCell
          cell.textLabel?.text = shoppingCart.item[indexPath.row].name
          cell.imageView?.image = shoppingCart.item[indexPath.row].photo
        return cell
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
