//
//  SecondaryCordinator.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 04/10/22.
//

import Foundation
import UIKit

class SecondCordinatorImpl: SecondaryCordinator, CustomStringConvertible {
    func goBack() {
        navVc.popViewController(animated: true)
        parentCordinator?.removeFromStack()
        // Does go anywhere - this is top most class
    }
    
    func removeFromStack() {
     // Nothing to remove
    }
    
    weak var parentCordinator: RootCordinator?
    var description: String {
        String(describing: self)
    }
    
    func navigateToFurtherView() {
        
    }
    var childCordinators: [RootCordinator] = []
    
    private var navVc: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navVc = navigationController
    }
    
    func start() {
        let vc = SecondaryDetailController()
        vc.cordinator = self
        navVc.pushViewController(vc, animated: true)
    }
    deinit {
        print("Secondary detail was deallocated")
    }
}
