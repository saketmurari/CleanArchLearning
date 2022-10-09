//
//  HomeCordinator.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 04/10/22.
//

import Foundation
import UIKit

class HomeCordinatorImpl: HomeCordinator {
    func removeFromStack() {
        childCordinators.removeAll()
    }
    
    weak var parentCordinator: RootCordinator?
    var childCordinators: [RootCordinator] = []
    
    func navigateToDetailView() {
        let factory = ViewFactory(navVc: navVc)
        let childCordinator = factory.createChildCordinator(name: .Detail)
        childCordinator.parentCordinator = self
        childCordinators.append(childCordinator)
        childCordinator.start()
    }
    
    private var navVc: UINavigationController
    required init(navigationController: UINavigationController) {
        navVc = navigationController
    }
    
    func start() {
        let vc = HomeViewController()
        vc.homeCordinator = self
        navVc.pushViewController(vc, animated: true)
    }
}
