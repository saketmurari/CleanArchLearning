//
//  ViewController.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 03/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    weak var homeCordinator: HomeCordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 30,y: 300, width: 100, height: 100)
        button.backgroundColor = UIColor.black
        button.setTitle("Go", for: .normal)
        button.titleLabel?.textColor = UIColor.white
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
       
        view.addSubview(button)
        
        self.navigationController?.isNavigationBarHidden = false
        
        // Do any additional setup after loading the view.
    }
    
    @objc func goToNextPage(sender: UIButton) {
        homeCordinator?.navigateToDetailView()
    }


}

