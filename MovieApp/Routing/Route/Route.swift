//
//  Route.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

protocol AppRoute {
    func setRootViewController()
}

extension AppRoute where Self: RouterProtocol {
    func setRootViewController() {
        let rootController = HomeController(viewModel: HomeViewModel(router: Router()))
        let transition = OnWindowTransition()
        open(rootController, transition: transition)
    }
}
