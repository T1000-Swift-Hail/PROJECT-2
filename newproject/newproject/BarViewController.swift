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
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 1..<10 {
            entries.append(BarChartDataEntry(x:Double(x),
                                           y:Double(x)))
        }
        
        let set =  BarChartDataSet(entries : entries)
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }

}

