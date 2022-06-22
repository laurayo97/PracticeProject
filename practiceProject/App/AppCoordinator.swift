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
   
    
    func start() {
        process(transition: .Login)
        navigationViewController.isNavigationBarHidden = true
    }
    
}

extension AppCoordinator : TransitionDelagate {
    func process(transition: Transition) {
        switch transition {
        case .Home:
            let homeCoordinator = HomeCoordinator()
            homeCoordinator.inject(navigationViewController: navigationViewController)
            homeCoordinator.inject(transitionDelegate: self)
            homeCoordinator.start()
        case .Login:
            let loginViewController = LoginCoordinator()
            loginViewController.inject(navigationViewController: navigationViewController)
            loginViewController.inject(transitionDelegate: self)
            loginViewController.start()
        case .Onboarding:
            let homeCoordinator = OnboardingCoordinator()
            homeCoordinator.inject(navigationViewController: navigationViewController)
            homeCoordinator.inject(transitionDelegate: self)
            homeCoordinator.start()
        }
    }
    
    
}
