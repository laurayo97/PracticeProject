//
//  Coordinator.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/8/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    func start()
}

protocol UICoordinator  : Coordinator {
    var primaryViewController : UIViewController { get }
    var navigationViewController : UINavigationController? { get set }
    var transitionDelegate : TransitionDelagate? {get set }
}
protocol ApiCoordinator : Coordinator {
     
    var apiManager: ApiManager? { get set }
}

extension UICoordinator {
    func inject(navigationViewController: UINavigationController) {
        self.navigationViewController = navigationViewController
    }
    func inject(transitionDelegate: TransitionDelagate) {
        self.transitionDelegate = transitionDelegate
    }
}

protocol WorkflowCoordinator : UICoordinator, ApiCoordinator {
    
}
