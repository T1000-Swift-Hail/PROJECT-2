//
//  ViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 30/03/1443 AH.
//
import Charts
import UIKit

class BarViewController: UIViewController , ChartViewDelegate {

    
    var barChart = BarChartView()
//    
//    var factory = Busniss(busnissName: "Concret", busnissImege:UIImage(named: "ConcretFactory")!, busnissNumberEmployer: 10, busnissRevenu: 100000, busnissTotalCost: 50000, busnissNetProfit: 50000)
//    var gasStation = Busniss(busnissName: "Gas station", busnissImege: UIImage(named:"Gas Station")!, busnissNumberEmployer: 6, busnissRevenu: 30000, busnissTotalCost: 20000, busnissNetProfit: 10000)
//    var company = Busniss(busnissName: "Company", busnissImege: UIImage(named:"Company")!, busnissNumberEmployer: 30, busnissRevenu: 500000, busnissTotalCost: 250000, busnissNetProfit: 250000)
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(BarChartDataEntry(x:Double(x),
                                           y:Double(x)))
        }
        
        let set =  BarChartDataSet(entries : entries)
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }

}

