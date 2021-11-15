//
//  ThirsLeftFunc.swift
//  Games Calculetor
//
//  Created by mac on 03/04/1443 AH.
//
import Foundation
import UIKit

extension FirstViewController {

    func thirsLeftfunc () {
        
        
          guard let Th1:Int = Int(theirsTextFied.text ?? "nil" ) else {return}
          let newValue2 = (Totai2.last ?? 0) + Th1

          if newValue2 <= 151 {
              Totai2.append(Th1)
              var total = 0
              for num in Totai2 {
                  total = total + num
              }
              total2Label.text = "\(total)"
              theirsTextFied.text = "0"
          } else{
              var Wan2 = String(winnerLabel.text!)
              Wan2 = NSLocalizedString("Theirs Winner", comment: "")
              winnerLabel.textColor = .blue
              total2Label.textColor = .blue
              winnerLabel.text = "\(Wan2)"
              imageView.image = UIImage(named: "1-1")
              winnerLabel.backgroundColor = .yellow
              winnerLabel.font = .boldSystemFont(ofSize: 40)


          }
}
}
