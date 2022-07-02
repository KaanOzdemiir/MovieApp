//
//  DetailViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Helpers
import API
import UIKit

class DetailViewModel: BaseViewModel<DetailRouter> {
    
    private let tvShow: TVShowResult
    
    init(tvShow: TVShowResult, router: DetailRouter) {
        self.tvShow = tvShow
        super.init(router: router)
    }
    
    var backdropImageURL: URL? {
        URL(string: tvShow.backdropPath.fixedPath)
    }
    
    var backImage: UIImage? {
        UIImage(named: "ic_back")?.withRenderingMode(.alwaysTemplate)
    }
    
    var bookmarkImage: UIImage? {
        UIImage(named: "ic_bookmark")?.withRenderingMode(.alwaysTemplate)
    }
    
    var nameText: String? {
        tvShow.name
    }
    
    private var firstAirDate: String? {
        tvShow.firstAirDate
    }
    
    var firstAirDateText: String {
        DateFormatHelper.format(firstAirDate, from: .yyyy__MM__dd, to: .d_MMMM_yyyy)
    }
    
    private var voteAvarage: Double {
        tvShow.voteAverage ?? 0.0
    }
    
    var voteAvarageText: String? {
        "\(voteAvarage)"
    }
    
    var shouldHideVoteAvarage: Bool {
        tvShow.voteAverage.isNil || voteAvarage < 0.0 || voteAvarage > 10.0
    }
    
    var overviewText: String? {
        tvShow.overview
    }
}

// MARK: Route
extension DetailViewModel {
    func close() {
        router.close()
    }
}
