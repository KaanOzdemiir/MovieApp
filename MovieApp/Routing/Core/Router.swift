//
//  Router.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

protocol RouterProtocol: AnyObject {
    func open(_ viewController: UIViewController, transition: Transition)
}

class Router: RouterProtocol {
    
    weak var viewController: UIViewController?
    var openTransition: Transition?

    func open(_ viewController: UIViewController, transition: Transition) {
        transition.viewController = self.viewController
        transition.open(viewController)
    }
    
    func close() {
        guard let transition = openTransition else {
            assertionFailure("You should specify an open transition in order to close a module.")
            return
        }
        
        guard let viewController = viewController else {
            assertionFailure("Not found \(type(of: viewController))")
            return
        }
        
        transition.close(viewController)
    }
    
    deinit {
        debugPrint("deinit \(self)")
    }
}
