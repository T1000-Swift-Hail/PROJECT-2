//
//  ConversionFromVC.swift
//  Best Converter
//
//  Created by Asma on 14/11/2021.
//
import UIKit

class ConversionFromVC: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var typeSelected:ConversionCurrency? = nil
    var typeSelectedSet:ConversionCurrency? = nil
    var typeSelectedTo:ConversionCurrency? = nil
    var conversionCurrency = ConversionCurrency.USD
    var conversionCurrencyS = ConversionCurrency.USD
    
    var previousCurrency: [String] = []
    
    
    @IBOutlet weak var inputCurrency: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var segmentCurrency: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeSelectedSet = typeSelected
        inputCurrency.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    //MARK: - IBAction for segment when choosing the user for any currency her want to convert

    
    @IBAction func conversionCurrencyTo(_ sender: UISegmentedControl) {
        
        selectedCurrencyTo(sender)
        
        switch typeSelectedSet {
        case .SAR:
            toSAR()
        case .USD:
            toUSD()
        case .AUD:
            toAUD()
        case .Euro:
            toEuro()
        default:
            break
        }
    }
    
    @IBAction func inputCurrenc(_ sender: UITextField) {
        
    }
    
    
    
    
    //MARK: - Arithmetic operations for conversion
    
    func convertFromSarToUsd( sar: Double) -> Double {
        return sar / 3.75
    }
    func convertFromSarToAud( sar: Double) -> Double {
        return sar / 2.78
    }
    func convertFromSarToEuro( sar: Double) -> Double {
        return sar / 4.33
    }
    


    func convertFromUsdToSar( usd: Double) -> Double {
        return usd / 0.27
    }
    func convertFromUsdToAud( usd: Double) -> Double {
        return usd / 0.74
    }
    func convertFromUsdToEuro( usd: Double) -> Double {
        
        return usd / 1.16
    }



    func convertFromAudToUsd( aud: Double) -> Double {
        return aud / 1.35
    }
    func convertFromAudToSar( aud: Double) -> Double {
        return aud / 0.36
    }
    func convertFromAudToEuro( aud: Double) -> Double {
        return aud / 1.56
    }
    



    func convertFromEuroToUsd( euro: Double) -> Double {
        return euro / 0.87
    }
    func convertFromEuroToAud( euro: Double) -> Double {
        return euro / 0.64
    }
    func convertFromEuroToSar( euro: Double) -> Double {
        return euro / 0.23
    }
    
    
    
    //MARK: - finction for table view
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return previousCurrency.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       cell.textLabel?.text = previousCurrency[indexPath.row]
        
        return cell
    }
    
    //MARK: -

    
    fileprivate func selectedCurrencyTo(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            typeSelectedTo = .SAR
        case 1:
            typeSelectedTo = .AUD
        case 2:
            typeSelectedTo = .Euro
        case 3:
            typeSelectedTo = .USD
        default:
            print("")
        }
    }
    
    fileprivate func toSAR() {
        guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return  }
        switch typeSelectedTo {
        case .USD:
            let converted = convertFromSarToUsd(sar: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) USD"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()
        case .AUD:
            let converted = convertFromSarToAud(sar: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) AUD"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()
        case .Euro:
            let converted = convertFromSarToEuro(sar: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) Euro"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()
        default:
            break
        }
    }
    
    fileprivate func toUSD() {
        switch typeSelectedTo {
        case .SAR:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromUsdToSar(usd: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) SAR"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()
        case .AUD:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromUsdToAud(usd: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) AUD"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()
        case .Euro:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromUsdToEuro(usd: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) Euro"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()
        default:
            break
        }
    }
    
    fileprivate func toAUD() {
        switch typeSelectedTo {
        case .USD:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromAudToUsd(aud: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) USD"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()

        case .SAR:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromAudToSar(aud: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) SAR"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()

        case .Euro:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromAudToEuro(aud: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) Euro"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()

        default:
            break
        }
    }
    
    fileprivate func toEuro() {
        switch typeSelectedTo {
        case .USD:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromEuroToUsd(euro: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) USD"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()

        case .AUD:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromEuroToAud(euro: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) AUD"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()

        case .SAR:
            guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
            let converted = convertFromEuroToSar(euro: toDouble)
            let resultRounded = String(format: "%.2f", converted)
            result.text = "\(resultRounded) SAR"
            previousCurrency.append(result.text ?? " ")
            tableView.reloadData()

        default:
            break
        }
    }
    
    
}
