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
        let router = HomeRouter()
        let viewModel = HomeViewModel(router: router)
        let rootController = HomeController(viewModel: viewModel)
        let transition = OnWindowTransition()
        
        router.viewController = rootController
        router.openTransition = transition
        
        open(rootController, transition: transition)
    }
}
