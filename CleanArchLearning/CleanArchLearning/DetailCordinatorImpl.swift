//
//  File.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 04/10/22.
//

import Foundation
import UIKit

class DetailCordinatorImpl: DetailCordinator, CustomStringConvertible {
    
    func removeFromStack() {
        childCordinators.removeAll()
    }
    
    func goBack() {
        navVc.popViewController(animated: true)
        parentCordinator?.removeFromStack()
    }
    
    
    weak var parentCordinator: RootCordinator?
    
    var description: String {
        String(describing: self)
    }
    
    func navigateToSecondaryView() {
        let factory = ViewFactory(navVc: navVc)
        let childCordinator = factory.createChildCordinator(name: .Share)
        childCordinator.parentCordinator = self
        childCordinators.append(childCordinator)
        childCordinator.start()
    }

    var childCordinators: [RootCordinator] = []
    
    private var navVc: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navVc = navigationController
    }
    
    func start() {
        let vc = DetailViewContoller()
        vc.detailCordinator = self
        navVc.pushViewController(vc, animated: true)
    }
    deinit {
        print("Detail cordinate was deallocated")
    }
    
}

