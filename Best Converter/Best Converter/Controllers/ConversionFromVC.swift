//
//  ConversionFromVC.swift
//  Best Converter
//
//  Created by Asma on 14/11/2021.
//
import UIKit

class ConversionFromVC: UIViewController, UITextFieldDelegate {
    
    var typeSelected:ConversionCurrency? = nil
    var typeSelectedTo:ConversionCurrency? = nil
    var conversionCurrency = ConversionCurrency.USD
    var conversionCurrencyS = ConversionCurrency.USD
    
    var previousCurrency: [Double] = []
    
    
    @IBOutlet weak var inputCurrency: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var segmentCurrency: UISegmentedControl!


    // 1- array
    
    //table
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputCurrency.delegate = self

        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func conversionCurrencyTo(_ sender: UISegmentedControl) {
        
        inputCurrency.text = ""
        
        switch typeSelected {
            
        case .SAR:
            switch typeSelectedTo {
            case .USD:
                conversionCurrency = .USD
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromSarToUsd(sar: toDouble))"
                previousCurrency.append(toDouble)
            case .AUD:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromSarToAud(sar: toDouble))"
                previousCurrency.append(toDouble)
            case .Euro:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromSarToEuro(sar: toDouble))"
                previousCurrency.append(toDouble)
            default:
                break
            }
            
        case .USD:
            switch typeSelectedTo {
            case .SAR:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromUsdToSar(usd: toDouble))"
            case .AUD:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromUsdToAud(usd: toDouble))"
            case .Euro:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromUsdToEuro(usd: toDouble))"
            default:
                break
            }
            
        case .AUD:
            switch typeSelectedTo {
            case .USD:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromAudToUsd(aud: toDouble))"
            case .SAR:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromAudToSar(aud: toDouble))"
            case .Euro:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromAudToEuro(aud: toDouble))"
            default:
                break
            }
            
        case .Euro:
            switch typeSelectedTo {
            case .USD:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromEuroToUsd(euro: toDouble))"
            case .AUD:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromEuroToAud(euro: toDouble))"
            case .SAR:
                guard let toDouble: Double = Double(inputCurrency.text ?? "nil") else { return }
                result.text = "\(convertFromEuroToSar(euro: toDouble))"
            default:
                break
            }
        default:
            break
        }
    }
    
    
    @IBAction func inputCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(inputCurrency.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .SAR:
            switch conversionCurrencyS {
            case .USD:
                let convertedCurrency = convertFromSarToUsd(sar: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            case .AUD:
                let convertedCurrency = convertFromSarToAud(sar: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) AUD"
            case .Euro:
                let convertedCurrency = convertFromSarToEuro(sar: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) Euro"
            case .SAR: break
            }
        case .USD:
            switch conversionCurrencyS {
            case .SAR:
                let convertedCurrency = convertFromUsdToSar(usd: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) SAR"
            case .AUD:
                let convertedCurrency = convertFromUsdToAud(usd: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) AUD"
            case .Euro:
                let convertedCurrency = convertFromUsdToEuro(usd: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) Euro"
            case .USD: break
            }
            
            
        case .AUD:
            switch conversionCurrencyS {
            case .USD:
                let convertedCurrency = convertFromAudToUsd(aud: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            case .SAR:
                let convertedCurrency = convertFromAudToSar(aud: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) SAR"
            case .Euro:
                let convertedCurrency = convertFromAudToEuro(aud: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) Euro"
            case .AUD: break
            }
            
            
        case .Euro:
            switch conversionCurrencyS {
            case .USD:
                let convertedCurrency = convertFromEuroToUsd(euro: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            case .AUD:
                let convertedCurrency = convertFromEuroToAud(euro: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) AUD"
            case .SAR:
                let convertedCurrency = convertFromEuroToSar(euro: amountCurrency)
                result.text = "\(String(format: "%.2f", convertedCurrency)) SAR"
            case .Euro: break
            }
        }
        
    }
        
    
    
    
    
    
    
    
    //MARK: - Arithmetic functions for each currency
    func convertFromSarToUsd( sar: Double) -> Double {
        return sar / 3.75000
    }
    func convertFromSarToAud( sar: Double) -> Double {
        return sar / 2.78368
    }
    func convertFromSarToEuro( sar: Double) -> Double {
        return sar / 4.33426
    }

     //MARK: - Arithmetic functions for each currency
    func convertFromUsdToSar( usd: Double) -> Double {
        return usd / 0.266667
    }
    func convertFromUsdToAud( usd: Double) -> Double {
        return usd / 0.740211
    }
    func convertFromUsdToEuro( usd: Double) -> Double {
        return usd / 1.15878
    }
    //MARK: - Arithmetic functions for each currency
    func convertFromAudToUsd( aud: Double) -> Double {
        return aud / 1.35097
    }
    func convertFromAudToSar( aud: Double) -> Double {
        return aud / 0.360258
    }
    func convertFromAudToEuro( aud: Double) -> Double {
        return aud / 1.56145
    }
    
    //MARK: - Arithmetic functions for each currency
    func convertFromEuroToUsd( euro: Double) -> Double {
        return euro / 0.865199
    }
    func convertFromEuroToAud( euro: Double) -> Double {
        return euro / 0.640429
    }
    func convertFromEuroToSar( euro: Double) -> Double {
        return euro / 0.230720
    }
    
    
    
    
}
