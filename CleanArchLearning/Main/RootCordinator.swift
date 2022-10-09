//
//  FlowCordinator.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 03/10/22.
//

import Foundation
import UIKit

protocol RootCordinator: AnyObject {
    // this is use less property just to hold the reference long enough so that other flow co-ordinator doesnt get de-allocated.
    var childCordinators: [RootCordinator] { get set }
    init(navigationController:UINavigationController)
    func start()
    var parentCordinator: RootCordinator? {get set}
    func removeFromStack()

}

protocol HomeCordinator: RootCordinator {
    func navigateToDetailView()
}
protocol DetailCordinator: RootCordinator {
    func navigateToSecondaryView()
    func goBack()
}
protocol SecondaryCordinator: RootCordinator {
    func navigateToFurtherView()
    func goBack()
}
