//
//  HomeCoordinator.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/24/22.
//

import Foundation
import UIKit

class HomeCoordinator : WorkflowCoordinator {
    
    lazy var primaryViewController: UIViewController = {
       let viewController = HomeViewController()
        return viewController
    }()
    
    
    var navigationViewController: UINavigationController?
    
    var transitionDelegate: TransitionDelagate?
    
    var apiManager: ApiManager?
    
    func start() {
        navigationViewController?.pushViewController(primaryViewController, animated: true)
    }
}
