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
    
    var results: [TVShowResult] = [] {
        didSet {
            updateViews?()
        }
    }
    
    var updateViews: VoidClosure?
    
    init(router: HomeRouter) {
        super.init(router: router)
    }
    
    func cellViewModel(at indexPath: IndexPath) -> TVShowCellViewModel? {
        if let result = results[safe: indexPath.item] {
            return TVShowCellViewModel(tvShow: result)
        }
        return nil
    }
    
    var numberOfItems: Int {
        results.count
    }
    
    var imageRatio: CGFloat {
        380 / 570
    }
    
    var cellSize: CGSize {
        let width = (UIScreen.screenWidth - edgeInset.left - edgeInset.right) / numberOfRow - cellPadding
        return CGSize(
            width: width,
            height: width / imageRatio + tvShowInfoAreaHeight
        )
    }
    
    var tvShowInfoAreaHeight: CGFloat {
        40 + 16
    }
    
    var numberOfRow: CGFloat {
        2
    }
    
    var cellPadding: CGFloat {
        10
    }
    
    var edgeInset: UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
}

// MARK: Network
extension HomeViewModel {
    func fetchPopularTVShows() {
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

// MARK: Route
extension HomeViewModel {
    func pushDetail(at indexPath: IndexPath) {
        guard let tvShow = cellViewModel(at: indexPath)?.tvShow else {
            assertionFailure("Can not find tv show")
            return
        }
        router.pushDetail(tvShow: tvShow)
    }
}
