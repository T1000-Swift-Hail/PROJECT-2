//
//  ConversionFromUnit.swift
//  Best Converter
//
//  Created by Asma on 14/11/2021.
//

import UIKit

class ConversionFromUnit: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    var typeSelected: ConversionUnit? = nil
    var typeSelectedSet:ConversionUnit? = nil
    var typeSelectedTo:ConversionUnit? = nil
    var conversionUnit = ConversionUnit.m
    var conversionUnits = ConversionUnit.m
    
    var previousUnit: [String] = []
    
    //MARK: -
    @IBOutlet weak var inputUnit: UITextField!
    @IBOutlet weak var resultUnit: UILabel!
    @IBOutlet weak var segmentUnit: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeSelectedSet = typeSelected
        inputUnit.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
    }
    
    //MARK: - IBAction for segment when choosing the user for any unit her want to convert
    
    @IBAction func conversionUnitTo(_ sender: UISegmentedControl) {
                
        selectedUnitTo(sender)
        
        switch typeSelectedSet {
        case .m:
            
            guard let toDouble: Double = Double(inputUnit.text ?? "nil") else { return }

            switch typeSelectedTo {
            case .cm:
                let converted = convertFromMToCm(meter: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) cm"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .km:
                let converted = convertFromMToKm(meter: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) km"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .inch:
                let converted = convertFromMToInch(meter: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) inch"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            default: break
            }
            
        case .cm:
            guard let toDouble: Double = Double(inputUnit.text ?? "nil") else { return }
            switch typeSelectedTo {
            case .km:
                let converted = convertFromCmTokm(centimeter: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) km"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .m:
                let converted = convertFromCmToM(centimeter: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) m"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .inch:
                let converted = convertFromCmToInch(centimeter: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) inch"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            default: break
            }
            
        case .km:
            guard let toDouble: Double = Double(inputUnit.text ?? "nil") else { return }
            switch typeSelectedTo {
            case .cm:
                let converted = convertFromKmToCm(kilometer: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) cm"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .m:
                let converted = converFromKmToM(kilometer: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) m"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()
            case .inch:
                let converted = convertFromKmToInch(kilometer: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) inch"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()
            default: break
            }
        case .inch:
            guard let toDouble: Double = Double(inputUnit.text ?? "nil") else { return }
            switch typeSelectedTo {
            case .cm:
                let converted = convertFromInchToCm(inch: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) cm"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .km:
                let converted = convertFromInchToKm(inch: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) km"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()

            case .m:
                let converted = convertFromInchToM(inch: toDouble)
                let resultRounded = String(format: "%.5f", converted)
                resultUnit.text = "\(resultRounded) m"
                previousUnit.append(resultUnit.text ?? " ")
                tableView.reloadData()
            default: break
            }
        default: break
        }
        
        
    }
    //MARK: - Arithmetic operations for conversion
    
    func convertFromMToKm( meter: Double) -> Double {
        return meter * 0.001
    }
    func convertFromMToCm( meter: Double) -> Double {
        return meter * 100
    }
    func convertFromMToInch( meter: Double) -> Double {
        return meter * 39.3700
    }
    
    
    func converFromKmToM( kilometer: Double) -> Double {
        return kilometer * 1000
    }
    func convertFromKmToCm( kilometer: Double) -> Double {
        return kilometer * 100000
    }
    func convertFromKmToInch( kilometer: Double) -> Double {
        return kilometer * 39370.078
    }

    
    
    func convertFromCmTokm (centimeter: Double) -> Double {
        return centimeter * 0.00001
    }
    func convertFromCmToM (centimeter: Double) -> Double {
        return centimeter * 0.01
    }
    func convertFromCmToInch (centimeter: Double) -> Double {
        return centimeter * 0.39370
    }
        
    
    func convertFromInchToKm (inch: Double) -> Double {
        return inch * 0.0000254
    }
    func convertFromInchToCm (inch: Double) -> Double {
        return inch * 2.54
    }
    func convertFromInchToM (inch: Double) -> Double {
        return inch * 0.0254
    }
    
    //MARK: -
    
    
    fileprivate func selectedUnitTo(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            typeSelectedTo = .km
        case 1:
            typeSelectedTo = .cm
        case 2:
            typeSelectedTo = .inch
        case 3:
            typeSelectedTo = .m
        default:
            print("")
        }
    }
    
  
    //MARK: - finction for table view

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return previousUnit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = previousUnit[indexPath.row]
        
        return cell
    }
    
    
    
}
