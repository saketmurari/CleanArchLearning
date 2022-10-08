//
//  SecondViewController.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 03/10/22.
//

import Foundation
import UIKit

class DetailViewContoller: UIViewController {
    weak var detailCordinator: DetailCordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 30,y: 300, width: 100, height: 100)
        button.backgroundColor = UIColor.black
        button.setTitle("Go", for: .normal)
        button.titleLabel?.textColor = UIColor.white
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        view.addSubview(button)
        
        
        let button1 = UIButton(type: .custom)
        button1.frame = CGRect(x: 30,y: 405, width: 100, height: 100)
        button1.backgroundColor = UIColor.black
        button1.setTitle("Back", for: .normal)
        button1.titleLabel?.textColor = UIColor.white
        button1.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button1.addTarget(self, action: #selector(goBack), for: .touchUpInside)
       
        view.addSubview(button1)
        
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @objc func goToNextPage(sender: UIButton) {
        detailCordinator?.navigateToSecondaryView()
    }
    @objc func goBack(sender: UIButton) {
        detailCordinator?.goBack()
    }
    deinit {
        print("Detail coordinate was released")
    }
}
