//
//  OnWindowTransition.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

class OnWindowTransition: Transition {
    var viewController: UIViewController?
    
    func open(_ viewController: UIViewController) {
        guard let window = UIApplication.shared.window else { return }
        UIView.transition(
            with: window,
            duration: 0.3,
            options: .transitionCrossDissolve,
            animations: {
                UIView.performWithoutAnimation {
                    window.rootViewController = viewController
                }
            },
            completion: nil)
    }
    
    func close(_ viewController: UIViewController) { }
}
