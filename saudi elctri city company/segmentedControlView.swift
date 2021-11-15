//
//  segmentedControlView.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 04/04/1443 AH.
//

// MARK: - segmantid code

import UIKit

class SegmentedControlView: UIViewController{
    
    var segmentedControlView : UISegmentedControl!
    var changeViewLabel : UILabel!
    let choices = ["april", "may", "june"]
    let bills = [297,401,366]
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControlView = UISegmentedControl(items: choices)
        
        segmentedControlView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControlView)
        
        segmentedControlView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedControlView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        
        
        
        changeViewLabel = UILabel()
        changeViewLabel.text = "please pay your bill"
        changeViewLabel.font = .systemFont(ofSize: 30)
        changeViewLabel.lineBreakMode = .byWordWrapping
        changeViewLabel.numberOfLines = 4
        changeViewLabel.textAlignment = .center
        
        changeViewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(changeViewLabel)
        
        changeViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        changeViewLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 20).isActive = true
        changeViewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        
        
        
        
        
        segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
        
        
    }
    
    
    @objc func controlValueChange(_ segControl : UISegmentedControl){
        
        changeViewLabel.text = "Your bill is  \(bills[segControl.selectedSegmentIndex])  ! thank you  !"
    }
    
    
    
}
