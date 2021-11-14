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
enum ArrynameBusniss:String {
    case none = ""
    case factory = "Factory"
    case gasStation = "Gas Station"
    case company = "Company"
}

class ChosePikerDataViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var NetProfitLabal: UILabel!
    
    @IBOutlet weak var TotalCostLabal: UILabel!
    
    @IBOutlet weak var RevenLabal: UILabel!
    
    @IBOutlet weak var EmplyerNumber: UILabel!
    
    @IBOutlet weak var BusnissImeg: UIImageView!
    
    @IBOutlet weak var DataType: UILabel!
    
    @IBOutlet weak var PikerBusnissData: UIPickerView!
    
    var ArrynameBusniss: [ArrynameBusniss] = [.none,.factory,.company,.gasStation]
    
    
    var factory = Busniss(busnissName: "Concret", busnissImege:UIImage(named: "ConcretFactory")!, busnissNumberEmployer: "10", busnissRevenu: "100000", busnissTotalCost: "50000", busnissNetProfit: "50000")
    var gasStation = Busniss(busnissName: "Gas station", busnissImege: UIImage(named:"Gas Station")!, busnissNumberEmployer: "6", busnissRevenu: "30000", busnissTotalCost: "20000", busnissNetProfit: "10000")
    var company = Busniss(busnissName: "Company", busnissImege: UIImage(named:"Company")!, busnissNumberEmployer: "30", busnissRevenu: "500000", busnissTotalCost: "250000", busnissNetProfit: "250000")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PikerBusnissData.delegate = self
        PikerBusnissData.dataSource = self
        
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ArrynameBusniss.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ArrynameBusniss[row].rawValue
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        DataType.text = ArrynameBusniss[row].rawValue
        
        switch ArrynameBusniss[row] {
        case .factory:
            BusnissImeg.image  = factory.busnissImege
            NetProfitLabal.text = factory.busnissNetProfit
            TotalCostLabal.text = factory.busnissTotalCost
            RevenLabal.text = factory.busnissRevenu
            EmplyerNumber.text = factory.busnissNumberEmployer
            
        case .gasStation:
            BusnissImeg.image  = gasStation.busnissImege
            NetProfitLabal.text = gasStation.busnissNetProfit
            TotalCostLabal.text = gasStation.busnissTotalCost
            RevenLabal.text = gasStation.busnissRevenu
            EmplyerNumber.text = gasStation.busnissNumberEmployer
            
        case .company:
            BusnissImeg.image  = company.busnissImege
            NetProfitLabal.text = company.busnissNetProfit
            TotalCostLabal.text = company.busnissTotalCost
            RevenLabal.text = company.busnissRevenu
            EmplyerNumber.text = company.busnissNumberEmployer
            
        case .none:
            print("")
        }
    }
    
}
