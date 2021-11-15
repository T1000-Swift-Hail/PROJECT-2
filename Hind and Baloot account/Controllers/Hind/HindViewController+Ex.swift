//
//  HindViewController+Ex.swift
//  Games Calculetor
//
//  Created by mac on 03/04/1443 AH.
//

import Foundation
import UIKit

extension HindViewController {
    
    
    // Here I made the Button shape be curved at the corners
    
    func setLayout() {
        hind1Button.layer.cornerRadius = 30
        hind1Button.layer.masksToBounds = true
        hind1Button.layer.cornerRadius = hind1Button.frame.width / 8
        
        
        hind2Botton.layer.cornerRadius = 30
        hind2Botton.layer.masksToBounds = true
        hind2Botton.layer.cornerRadius = hind2Botton.frame.width / 8
        
    }
    
    
    
    func haid11() {
        
        // Here I used the Alert Controller
        //So that the user can calculate the value with the least effort
        // and ease of finding the result
        
        // First team
        
        let hind = UIAlertController(title: NSLocalizedString("Register", comment: ""), message: NSLocalizedString("Register the game type", comment: ""), preferredStyle: .actionSheet)
        hind.addAction(UIAlertAction(title: NSLocalizedString("Pure", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used pure
            
            self.pureRight()
            
        }))
        
        hind.addAction(UIAlertAction(title: NSLocalizedString("Hind", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Hind
            
            self.hindRight()
            
            
        }))
        hind.addAction(UIAlertAction(title:NSLocalizedString("Joker", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Joker
            
            self.jokerRight()
            
        }))
        hind.addAction(UIAlertAction(title:NSLocalizedString("Color", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Color
            
            self.colorRight()
            
        }))
        hind.addAction(UIAlertAction(title:NSLocalizedString("Joker and Color", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Joker and Color
            
            
            self.jokercolonRight()
            
        }))
        
        hind.addAction(UIAlertAction(title: NSLocalizedString("Zat", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Zat
            
            
            self.zatRight()
            
            
        }))
        hind.addAction(UIAlertAction(title: NSLocalizedString("Jokren", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Jokren
            
            
            
            self.jokrenRight()
            
        }))
        hind.addAction(UIAlertAction(title:  NSLocalizedString("Jokren and Color", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Jokren and Color
            
            
            
            self.jokrenandcolorRight()
            
        }))
        hind.addAction(UIAlertAction(title: NSLocalizedString("Jokren and Zat", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the first team if it used Jokren and Zat
            
            
            self.jokrenandzatRight()
            
            
        }))
        
        // End the list
        hind.addAction(UIAlertAction(title:NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: nil))
        present(hind, animated: true, completion: nil)
        
    }
    
    func haid2() {
        // Here I used the Alert Controller
        //So that the user can calculate the value with the least effort
        // and ease of finding the result
        
        // Second Team
        
        let hind = UIAlertController(title: NSLocalizedString("Register", comment: ""), message:NSLocalizedString("Register the game type", comment: ""), preferredStyle: .actionSheet)
        hind.addAction(UIAlertAction(title:NSLocalizedString("Pure", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used pure
            
            self.pureLeft()
            
        }))
        
        hind.addAction(UIAlertAction(title: NSLocalizedString("Hind", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Hind
            
            self.hindLeft()
            
        }))
        hind.addAction(UIAlertAction(title: NSLocalizedString("Joker", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Joker
            
            self.jokerLeft()
            
        }))
        hind.addAction(UIAlertAction(title: NSLocalizedString("Color", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Color
            
            self.colorLeft()
        }))
        hind.addAction(UIAlertAction(title:NSLocalizedString("Joker and Color", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Joker and Color
            
            self.jokercolonLeft()
            
        }))
        
        hind.addAction(UIAlertAction(title: NSLocalizedString("Zat", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Zat
            
            self.zatLeft ()
            
            
        }))
        hind.addAction(UIAlertAction(title: NSLocalizedString("Jokren", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Jokren
            
            self.jokrenLeft()
            
        }))
        hind.addAction(UIAlertAction(title:NSLocalizedString("Jokren and Color", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Jokren and Color
            
            self.jokrenandcolorLeft ()
            
        }))
        hind.addAction(UIAlertAction(title:NSLocalizedString("Jokren and Zat", comment: ""), style: .default, handler: { action in
            // Here I put the arithmetic operation for the Second Team if it used Jokren and Zat
            
            
            self.jokrenandzatLeft()
            
            
        }))
        
        // End the list
        hind.addAction(UIAlertAction(title:NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: nil))
        present(hind, animated: true, completion: nil)
        
    }
    
    
}
