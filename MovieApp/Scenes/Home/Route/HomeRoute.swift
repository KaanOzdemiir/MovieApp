//
//  HomeRoute.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Foundation
import UIKit

protocol HomeRoute: AnyObject {
    func placeOnWindowHome()
}

extension HomeRoute where Self: RouterProtocol {
    func placeOnWindowHome() {
        let router = HomeRouter()
        let viewModel = HomeViewModel(router: router)
        let viewController = HomeController(viewModel: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let transition = OnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(navigationController, transition: transition)
    }
}
