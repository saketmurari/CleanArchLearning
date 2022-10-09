//
//  FirstCordinator.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 03/10/22.
//

import Foundation
import UIKit

class RootCordinatorImpl: RootCordinator {
    func removeFromStack() {
        
    }
    
    var parentCordinator: RootCordinator?
    
    var childCordinators: [RootCordinator] = []

    private var navVc: UINavigationController
    required init(navigationController: UINavigationController) {
        navVc = navigationController
    }
    
    func start() {
        let factory = ViewFactory(navVc: navVc)
        let childCordinator = factory.createChildCordinator(name: .Home)
        childCordinator.parentCordinator = self
        childCordinators.append(childCordinator)
        childCordinator.start()
    }
}

