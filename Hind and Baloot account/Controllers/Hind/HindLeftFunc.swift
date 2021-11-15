//
//  HindLeftFunc.swift
//  Games Calculetor
//
//  Created by mac on 03/04/1443 AH.
//

import Foundation
import UIKit
extension HindViewController {
    
    func pureLeft () {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        if numberTextfied == 0 {
            let Us1Total = self.pure2 + Us1
            let Their2Total = self.pure1 +  Their2
            differ = diff - self.differencePure
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.pure2 / 2) + numberTextfied
            let Their2Total = self.pure1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    func hindLeft() {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.hind2 + Us1
            let Their2Total = self.hind1 +  Their2
            differ = diff - self.differenceHind
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.hind2 / 2) + (numberTextfied * 2)
            let Their2Total = self.hind1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    func jokerLeft () {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.goker2 + Us1
            let Their2Total = self.goker1 +  Their2
            differ = diff - self.differenceColor
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.goker2 / 2) + (numberTextfied * 4)
            let Their2Total = self.goker1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    
    func colorLeft () {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.color2 + Us1
            let Their2Total = self.color1 +  Their2
            differ = diff - self.differenceColor
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.color2 / 2) + (numberTextfied * 4)
            let Their2Total = self.color1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    func jokercolonLeft () {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.gokercolor2 + Us1
            let Their2Total = self.gokercolor1 +  Their2
            differ = diff - self.differenceGokren
            
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.gokercolor2 / 2) + (numberTextfied * 8)
            let Their2Total = self.gokercolor1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    
    func zatLeft () {
        
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.zat2 + Us1
            let Their2Total = self.zat1 +  Their2
            differ = diff - self.differenceGokren
            
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.zat2 / 2) + (numberTextfied * 8)
            let Their2Total = self.zat1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    
    func jokrenLeft () {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.gokren2 + Us1
            let Their2Total = self.gokren1 +  Their2
            differ = diff - self.differenceGokren
            
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.gokren2 / 2) + (numberTextfied * 8)
            let Their2Total = self.gokren1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    
    
    func jokrenandcolorLeft () {
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.gokrencolor2 + Us1
            let Their2Total = self.gokrencolor1 +  Their2
            differ = diff - self.differenceGokrencoloen
            
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.gokrencolor2 / 2) + (numberTextfied * 12)
            let Their2Total = self.gokrencolor1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    
    
    func jokrenandzatLeft () {
        
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let diff:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            let Us1Total = self.gokrenzat2 + Us1
            let Their2Total = self.gokrenzat1 +  Their2
            differ = diff - self.differenceGokrenzat
            
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            let nem = (self.gokrenzat2 / 2) + (numberTextfied * 16)
            let Their2Total = self.gokrenzat1 +  Their2
            let Us1Total = nem + Us1
            differ = diff - nem
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
            
        }
    }
}
