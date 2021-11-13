//
//  LineViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 01/04/1443 AH.
//
import Charts
import UIKit

class LineViewController: UIViewController , ChartViewDelegate {

    
    var lineChart = LineChartView()
//    
//    var factory = Busniss(busnissName: "Concret", busnissImege:UIImage(named: "ConcretFactory")!, busnissNumberEmployer: 10, busnissRevenu: 100000, busnissTotalCost: 50000, busnissNetProfit: 50000)
//    var gasStation = Busniss(busnissName: "Gas station", busnissImege: UIImage(named:"Gas Station")!, busnissNumberEmployer: 6, busnissRevenu: 30000, busnissTotalCost: 20000, busnissNetProfit: 10000)
//    var company = Busniss(busnissName: "Company", busnissImege: UIImage(named:"Company")!, busnissNumberEmployer: 30, busnissRevenu: 500000, busnissTotalCost: 250000, busnissNetProfit: 250000)
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x:Double(x),
                                           y:Double(x)))
        }
        
        let set =  LineChartDataSet(entries : entries)
        set.colors = ChartColorTemplates.joyful()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }

}
