//
//  SecondaryDetailController.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 04/10/22.
//

import Foundation
import UIKit

class SecondaryDetailController: UIViewController {
    weak var cordinator: SecondaryCordinator?
    override func viewDidLoad() {
        view.backgroundColor = .darkGray
        
        
        let button1 = UIButton(type: .custom)
        button1.frame = CGRect(x: 30,y: 405, width: 100, height: 100)
        button1.backgroundColor = UIColor.black
        button1.setTitle("Back", for: .normal)
        button1.titleLabel?.textColor = UIColor.white
        button1.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button1.addTarget(self, action: #selector(goBack), for: .touchUpInside)
       
        view.addSubview(button1)
    }
    
    @objc func goBack(sender: UIButton) {
        cordinator?.goBack()
    }
    
    deinit {
        print("Secondary detail was released")
    }
}
