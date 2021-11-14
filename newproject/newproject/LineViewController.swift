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

    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // MARK: - UIVIEW
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        // Assign data to ChartDataEntry
        
        var entries = [ChartDataEntry]()
        
        // axis and data
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x:Double(x),
                                          // Random number between 0 to 30
                                          y:Double.random(in:0...30)))
        }
        
        let set =  LineChartDataSet(entries : entries)
        // costemise the chart
        set.colors = ChartColorTemplates.joyful()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }

}
