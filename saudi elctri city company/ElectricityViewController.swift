//
//  TableViewViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 06/04/1443 AH.
//

import UIKit

class ElectricityViewController: UIViewController {
    
    
    @IBOutlet weak var TableView: UITableView!
    
    var tables = ["Add and delete counters","fixed bill","thermal insulationitle","View your last three month bills","Interactive mobile messaging service"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self
        
        TableView.rowHeight = 100
        
    }
    
}
extension ElectricityViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "fixedBillISegue", sender: nil)
        case 1:
            performSegue(withIdentifier: "fixedPill", sender: nil)
        case 2:
            performSegue(withIdentifier: "insulation", sender: nil)
        case 3:
            performSegue(withIdentifier: "monthBills", sender: nil)
        default:
            performSegue(withIdentifier: "fixedBillISegue", sender: nil)
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tables.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath)
        cell.textLabel?.text = tables[indexPath.row]
        return cell
    }
    
}
