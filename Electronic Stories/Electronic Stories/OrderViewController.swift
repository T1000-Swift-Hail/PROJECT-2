//
//  OrderViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class OrderViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    @IBAction func tableview(_ sender: UIButton) {
        let pay = ["mada", "visa","paypal"]
        override func viewDidLoad() {
            super.viewDidLoad()

            tableview.delegate = self
            tableview.dataSource = self
        }
   

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pay.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell  {
        let cell = tableview.dequeueReusableCell(withReuseIdentifier: "cell", for: IndexPath)
        cell.textLabel?.text = pay [IndexPath]
        return cell
    }
}
