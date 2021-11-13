//
//  ChosePikerDataViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 07/04/1443 AH.
//

import UIKit
struct Busniss {
    
    var busnissName = String()
    var busnissImege = UIImage()
    var busnissNumberEmployer = String()
    var busnissRevenu = String ()
    var busnissTotalCost = String ()
    var busnissNetProfit = String ()
    
    
}

class ChosePikerDataViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var NetProfitLabal: UILabel!
    
    @IBOutlet weak var TotalCostLabal: UILabel!
    
    @IBOutlet weak var RevenLabal: UILabel!
    
    @IBOutlet weak var EmplyerNumber: UILabel!
    
    @IBOutlet weak var BusnissImeg: UIImageView!
    
    @IBOutlet weak var DataType: UILabel!
    
    @IBOutlet weak var PikerBusnissData: UIPickerView!
    
    var ArrynameBusniss = ["factory","Gas Station","Company"]
    
   
    
    
    var factory = Busniss(busnissName: "Concret", busnissImege:UIImage(named: "ConcretFactory")!, busnissNumberEmployer: "10", busnissRevenu: "100000", busnissTotalCost: "50000", busnissNetProfit: "50000")
    var gasStation = Busniss(busnissName: "Gas station", busnissImege: UIImage(named:"Gas Station")!, busnissNumberEmployer: "6", busnissRevenu: "30000", busnissTotalCost: "20000", busnissNetProfit: "10000")
    var company = Busniss(busnissName: "Company", busnissImege: UIImage(named:"Company")!, busnissNumberEmployer: "30", busnissRevenu: "500000", busnissTotalCost: "250000", busnissNetProfit: "250000")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PikerBusnissData.delegate = self
        PikerBusnissData.dataSource = self
        
    }
   
    
   
    @IBAction func Data(_ sender: Any) {
        var EmplyerNumber = EmplyerNumber.text
        var RevenLabal = RevenLabal.text
        var NetProfitLabal = NetProfitLabal.text
        var TotalCostLabal = TotalCostLabal.text
        
        
        if  DataType.text == ArrynameBusniss[PikerBusnissData.selectedRow(inComponent: 0)] {
            
            NetProfitLabal = factory.busnissNetProfit
            TotalCostLabal = factory.busnissTotalCost
            RevenLabal = factory.busnissRevenu
            EmplyerNumber = factory.busnissNumberEmployer
           print("hhhhh\(factory.busnissNumberEmployer)")
            
            
        }else if DataType.text == ArrynameBusniss[PikerBusnissData.selectedRow(inComponent: 1)] {
            
            
            
            NetProfitLabal = gasStation.busnissNetProfit
            TotalCostLabal = gasStation.busnissTotalCost
            RevenLabal = gasStation.busnissRevenu
            EmplyerNumber = gasStation.busnissNumberEmployer
        }else {
                
                
            
            NetProfitLabal = company.busnissNetProfit
            TotalCostLabal = company.busnissTotalCost
            RevenLabal = company.busnissRevenu
            EmplyerNumber = company.busnissNumberEmployer
            
            }
        
        
        
            
    
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ArrynameBusniss.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ArrynameBusniss[row]
        
    }
    
}
