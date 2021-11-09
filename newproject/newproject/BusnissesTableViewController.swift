//
//  BusnissesTableViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 03/04/1443 AH.
//

import UIKit


struct Busnisses{
  
     var busnissName = String()
     var imegeBusness = UIImage()
     var numberEmployees = String()
     var totalCost = String()
     var revenu = String()
     var netProfit = String()
    
    
}

class BusnissesTableViewController: UITableViewController {
 
    
    
    @IBOutlet weak var Titel: UITextField!


    
    @IBOutlet weak var NumberEmployee: UITextField!
    
    @IBOutlet weak var TotalCost: UITextField!
    
    @IBOutlet weak var Revenu: UITextField!
    
    @IBOutlet weak var NetProfite: UITextField!
    
    var busniss = Busnisses()
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    
    @IBAction func TiteleInpot(_ sender: Any) {
        
        let Titel = Titel.text
        
        busniss.busnissName = Titel!
        
    }
    
    
    
    @IBAction func NumberInput(_ sender: Any) {
        
        let NumberEmployee = NumberEmployee.text
        
        busniss.numberEmployees = NumberEmployee!
    }
    
    @IBAction func TotalCostInpot(_ sender: Any) {
        
        let TotalCost = TotalCost.text
        
        busniss.totalCost = TotalCost!
    }
    
    @IBAction func RevenuInpot(_ sender: Any) {
        
        let Revenu = Revenu.text
        
        busniss.revenu = Revenu!
    }
    
    
    @IBAction func NetProfitInpot(_ sender: Any) {
        
        let NetProfite = NetProfite.text
        
        busniss.netProfit = NetProfite!
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }
}
