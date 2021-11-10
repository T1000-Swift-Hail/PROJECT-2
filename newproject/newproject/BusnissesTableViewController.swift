//
//  BusnissesTableViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 03/04/1443 AH.
//

import UIKit


struct Busnisses{
    
    var busnissName = String()
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
    
    @IBOutlet weak var SaveBotton: UIButton!
    
    
    var busniss = Busnisses()
    var defaults = UserDefaults.standard
    //    var busnissData = Busnisses()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func SaveData(_ sender: Any) {
        
        
        let Titel = Titel.text
        
        busniss.busnissName = Titel!
        
        self.defaults.set(self.busniss.busnissName, forKey: "busnissName")
        
        let NumberEmployee = NumberEmployee.text
        
        busniss.numberEmployees = NumberEmployee!
        
        self.defaults.set(self.busniss.numberEmployees, forKey: "numberEmployees")
        
        let TotalCost = TotalCost.text
        
        busniss.totalCost = TotalCost!
        
        self.defaults.set(self.busniss.totalCost, forKey: "totalCost")
        
        
        let Revenu = Revenu.text
        
        busniss.revenu = Revenu!
        
        self.defaults.set(self.busniss.revenu, forKey: "revenu")
        
        
        let NetProfite = NetProfite.text
        
        busniss.netProfit = NetProfite!
        
        self.defaults.set(self.busniss.netProfit, forKey: "revenu")
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }
}
