//
//  Transition.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/24/22.
//

import Foundation

protocol TransitionDelagate: AnyObject {
    func process(transition: Transition)
}

enum Transition {
    case Home
    case Login
    case Onboarding
}
