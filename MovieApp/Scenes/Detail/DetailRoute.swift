//
//  DetailRoute.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import API

protocol DetailRoute {
    func pushDetail(tvShow: TVShowResult)
}

extension DetailRoute where Self: RouterProtocol {
    func pushDetail(tvShow: TVShowResult) {
        let router = DetailRouter()
        let viewModel = DetailViewModel(tvShow: tvShow, router: router)
        let viewController = DetailController(viewModel: viewModel)
        let transition = PushTransition()
        
        router.openTransition = transition
        router.viewController = viewController
        
        open(viewController, transition: transition)
    }
}
