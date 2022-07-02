//
//  HomeViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit
import API
import Helpers

final class HomeViewModel: BaseViewModel<HomeRouter> {
    
    var numberOfItems: Int {
        20
    }
    
    var cellSize: CGSize {
        CGSize(
            width: 200,
            height: 200
        )
    }
    
    var results: [TVShowResult] = [] {
        didSet {
            updateViews?()
        }
    }
    
    var updateViews: VoidClosure?
    
    init(router: HomeRouter) {
        super.init(router: router)
        self.fetchPopularTVShows()
    }
    
    func cellViewModel(at indexPath: IndexPath) -> TVShowCellViewModel? {
        if let result = results[safe: indexPath.item] {
            return TVShowCellViewModel(tvShow: result)
        }
        return nil
    }
}

// MARK: Network
extension HomeViewModel {
    private func fetchPopularTVShows() {
        let request = PopularTVShowsRequest()
        
        showLoading?()
        dataProvider.request(for: request) { [weak self] result in
            switch result {
            case .success(let response):
                self?.results = response.results ?? []
            case .failure(let error):
                print(error.localizedDescription)
            }
            self?.hideLoading?()
        }
    }
}
