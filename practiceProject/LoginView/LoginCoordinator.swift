//
//  LoginCoordinator.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/27/22.
//

import Foundation
import UIKit

class LoginCoordinator: WorkflowCoordinator {
    
   lazy var primaryViewController: UIViewController = {
        let viewController = LoginViewController()
        viewController.funcCallBack = callBack
        return viewController
    }()
    
    var navigationViewController: UINavigationController?
    
    var transitionDelegate: TransitionDelagate?
    
    var apiManager: ApiManager?
    
    func start() {
        navigationViewController?.pushViewController(primaryViewController, animated: true)
    }
    
    func callBack() {
        transitionDelegate?.process(transition: .Onboarding)
    }
}
