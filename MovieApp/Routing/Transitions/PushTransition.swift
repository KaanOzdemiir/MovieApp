//
//  PushTransition.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import UIKit

class PushTransition: Transition {
    var viewController: UIViewController?
    
    func open(_ viewController: UIViewController) {
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func close(_ viewController: UIViewController) {
        self.viewController?.navigationController?.popViewController(animated: true)
    }
}
