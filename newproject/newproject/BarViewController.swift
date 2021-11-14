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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        barChart.delegate = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        // MARK: - UIVIEW
        
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        // Assign data to ChartDataEntry
        
        var entriesFactory = [BarChartDataEntry]()
        // axis and data
        for x in 0..<10 {
            entriesFactory.append(BarChartDataEntry(x:Double(x),
                                             y:Double.random(in: 0...30)))
        }
        
        let set =  BarChartDataSet(entries: entriesFactory, label: "Factory")
        // costemise the chart
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSets: [set])
        barChart.data = data
      
}
}

