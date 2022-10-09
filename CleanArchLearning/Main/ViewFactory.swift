//
//  ViewFactory.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 04/10/22.
//

import Foundation
import UIKit

enum ScreenName: CaseIterable, CustomStringConvertible {
    var description: String {
    switch self {
        case .Home:
            return "Home"
        case .Detail:
            return "Detail"
        case .Share:
            return "Share"
    }
        
    }
    
    case Home
    case Detail
    case Share

    
}

protocol ViewFactoryProtocol {
    
    init(navVc: UINavigationController)
    func createChildCordinator(name: ScreenName) -> RootCordinator
}

class ViewFactory: ViewFactoryProtocol {
    
    func createChildCordinator(name: ScreenName) -> RootCordinator {
        switch name {
        case .Home:
            return HomeCordinatorImpl(navigationController: navVc)
        case .Detail:
            return DetailCordinatorImpl(navigationController: navVc)
        case .Share:
            return SecondCordinatorImpl(navigationController: navVc)
        }
    }
    
    var navVc: UINavigationController

    
    required init(navVc: UINavigationController) {
        self.navVc = navVc
    }
 
}
