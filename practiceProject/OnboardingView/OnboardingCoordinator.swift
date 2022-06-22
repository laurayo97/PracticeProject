//
//  OnboardingCoordinator.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 6/2/22.
//

import Foundation
import UIKit

class OnboardingCoordinator: WorkflowCoordinator {
    lazy var primaryViewController: UIViewController = {
        let viewController = OnboardingViewController()
        return viewController
    }()
    
    var navigationViewController: UINavigationController?
    
    var transitionDelegate: TransitionDelagate?
    
    var apiManager: ApiManager?
    
    func start() {
        navigationViewController?.pushViewController(primaryViewController, animated: true)
    }
}
