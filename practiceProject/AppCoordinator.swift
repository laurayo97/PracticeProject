//
//  AppCoordinator.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/8/22.
//

import Foundation
import UIKit

final class AppCoordinator: Coordinator{
    
    let navigationViewController = UINavigationController()
    let viewController = HomeViewController()
    
    func start() {
        navigationViewController.pushViewController(viewController, animated: true)
    }
    
    
}
