//
//  HindRigtFunc.swift
//  Games Calculetor
//
//  Created by mac on 03/04/1443 AH.
//

import Foundation
import UIKit
extension HindViewController {
    
    func pureRight() {
        
        
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        
        if numberTextfied == 0 {
            // TextFiled without value
            let Us1Total = self.pure1 + Us1
            let Their2Total = self.pure2 + Their2
            differ = self.differencePure + difference
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            
            
        } else {
            // TextFiled with value
            let addtionnumber = (self.pure2 / 2) + numberTextfied
            let Us1Total = self.pure1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
            
        }
        
    }
    
    func hindRight() {
        
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            
            let Us1Total = self.hind1 + Us1
            let Their2Total = self.hind2 + Their2
            differ = self.differenceHind + difference
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            
        } else {
            // TextFiled with value
            let addtionnumber = (self.hind2 / 2) + (numberTextfied * 2)
            let Us1Total = self.hind1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
    }
    func jokerRight () {
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            let Us1Total = self.goker1 + Us1
            let Their2Total = self.goker2 + Their2
            differ = self.differenceColor + difference
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            // TextFiled with value
            let addtionnumber = (self.goker2 / 2) + (numberTextfied * 4)
            let Us1Total = self.goker1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
            
        }
        
    }
    func colorRight () {
        
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        
        
        if numberTextfied == 0 {
            // TextFiled without value
            let Us1Total = self.color1 + Us1
            let Their2Total = self.color2 + Their2
            differ = self.differenceColor + difference
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else {
            // TextFiled with value
            let addtionnumber = (self.color2 / 2) + (numberTextfied * 4)
            let Us1Total = self.color1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
        }
    }
    func jokercolonRight () {
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            differ = self.differenceGokren + difference
            let Us1Total = self.gokercolor1 + Us1
            let Their2Total = self.gokercolor2 + Their2
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else{
            // TextFiled with value
            let addtionnumber = (self.gokercolor2 / 2) + (numberTextfied * 8)
            let Us1Total = self.gokercolor1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
            
        }
        
    }
    func zatRight () {
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            differ = self.differenceGokren + difference
            let Us1Total = self.zat1 + Us1
            let Their2Total = self.zat2 + Their2
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else{
            // TextFiled with value
            let addtionnumber = (self.zat2 / 2) + (numberTextfied * 8)
            let Us1Total = self.zat1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
        }
        
    }
    func jokrenRight () {
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            differ = self.differenceGokren + difference
            let Us1Total = self.gokren1 + Us1
            let Their2Total = self.gokren2 + Their2
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else{
            // TextFiled with value
            let addtionnumber = (self.gokren2 / 2) + (numberTextfied * 8)
            let Us1Total = self.gokren1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
        }
        
    }
    func jokrenandcolorRight () {
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            differ = self.differenceGokren + difference
            let Us1Total = self.gokrencolor1 + Us1
            let Their2Total = self.gokrencolor2 + Their2
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else{
            // TextFiled with value
            let addtionnumber = (self.gokrencolor2 / 2) + (numberTextfied * 12)
            let Us1Total = self.gokrencolor1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
        }
        
    }
    func jokrenandzatRight () {
        let numberTextfied = Int(self.numberTextField.text ?? "0" ) ?? 0
        let gamenumber:Int = Int(self.gamenumberLabel.text ?? "0" ) ?? 0
        let Us1:Int = Int(self.usLabel.text ?? "0" ) ?? 0
        let Their2:Int = Int(self.theireLabel.text ?? "0" ) ?? 0
        let difference:Int = Int(self.differenceLabel.text ?? "0" ) ?? 0
        
        if numberTextfied == 0 {
            // TextFiled without value
            differ = self.differenceGokren + difference
            let Us1Total = self.gokrenzat1 + Us1
            let Their2Total = self.gokrenzat2 + Their2
            
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.theireLabel.text = "\(Their2Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
        }else{
            // TextFiled with value
            let addtionnumber = (self.gokrenzat2 / 2) + (numberTextfied * 12)
            let Us1Total = self.gokrenzat1 + Us1
            let Their2Total = addtionnumber + Their2
            differ = addtionnumber + difference
            
            self.theireLabel.text = "\(Their2Total)"
            self.differenceLabel.text = "\(differ)"
            self.usLabel.text = "\(Us1Total)"
            self.gamenumberLabel.text = "\(gamenumber + 1)"
            self.numberTextField.text = ""
        }
    }
    
}
