//
//  UsRightFunc.swift
//  Games Calculetor
//
//  Created by mac on 03/04/1443 AH.
//

import Foundation
import UIKit

extension FirstViewController {

    func usRightfunc () {
        guard let Us1:Int = Int(usTextFied.text ?? "nil" ) else {return}
          let newValue = (Totai1.last ?? 0) + Us1
          
          if newValue <= 151 {
              Totai1.append(Us1)
              var total1 = 0
              for num in Totai1 {
                  total1 = total1 + num
              }
              totalLabel.text = "\(total1)"

              usTextFied.text = "0"
          } else {
              var Wan1 = String(winnerLabel.text!)
              Wan1 = NSLocalizedString("Us Winner", comment: "")
              winnerLabel.textColor = .blue
              totalLabel.textColor = .blue
              winnerLabel.text = "\(Wan1)"
              imageView.image = UIImage(named: "1-1")
              winnerLabel.backgroundColor = .yellow
              winnerLabel.font = .boldSystemFont(ofSize: 40)
              

          }
        
    }



}
