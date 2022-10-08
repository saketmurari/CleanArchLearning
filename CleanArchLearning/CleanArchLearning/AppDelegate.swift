//
//  AppDelegate.swift
//  CleanArchLearning
//
//  Created by saket.kumar on 03/10/22.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var firstCordinator: RootCordinatorImpl?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let navVc = UINavigationController()
        firstCordinator = RootCordinatorImpl(navigationController: navVc)
        firstCordinator?.start()
        window?.rootViewController = navVc
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

}

