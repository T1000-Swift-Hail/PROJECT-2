//
//  Backgame+Playagain.swift
//  Games Calculetor
//
//  Created by mac on 03/04/1443 AH.
//

import Foundation

import UIKit

extension FirstViewController {



    func undoResult() {
        let backedVal = Totai1.popLast() ?? 0
        usTextFied.text = "\(backedVal)"
        var total = 0
        for num in Totai1 {
            total = total + num
        }
        totalLabel.text = "\(total)"
        let Backedval = Totai2.popLast() ?? 0
        theirsTextFied.text = "\(Backedval)"
        var total2 = 0
        for num in Totai2 {
            total2 = total2 + num
        }
        total2Label.text = "\(total2)"
        view.endEditing(true)
    
}
    func renewGame () {
        usTextFied.text = "\(agine1)"
        theirsTextFied.text = "\(agine2)"
        
        
        totalLabel.text = "\(agine1)"
        totalLabel.textColor = .black
        
        total2Label.text = "\(agine2)"
        total2Label.textColor = .black
        
        winnerLabel.text = ""
        imageView.image = UIImage(named: "")
        winnerLabel.backgroundColor = nil
        theirsTextFied.text = ""
        usTextFied.text = ""
        Totai1.removeAll()
        Totai2.removeAll()
        
    }
}
