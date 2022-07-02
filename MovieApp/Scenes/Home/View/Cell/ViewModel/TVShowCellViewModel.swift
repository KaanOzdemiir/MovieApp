//
//  TVShowCellViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Helpers
import API
import UIKit

class TVShowCellViewModel {
    
    var tvShow: TVShowResult
    
    init(tvShow: TVShowResult) {
        self.tvShow = tvShow
    }
    
    var name: String? {
        tvShow.name
    }
    
    private var voteAvarage: Double {
        tvShow.voteAverage ?? 0.0
    }
    
    var voteAvarageText: NSAttributedString {
        "\(voteAvarage)".attributedStringWithColor(
            attributes: [
                (string: "\(voteAvarageIntValue)", color: .basic600, font: UIFont.systemFont(ofSize: 14, weight: .bold))
            ]
        )
    }
    
    var voteAvarageIntValue: Int {
        Int(voteAvarage)
    }
    
    var shouldHideVoteAvarage: Bool {
        tvShow.voteAverage.isNil || voteAvarage < 0.0 || voteAvarage > 10.0
    }
    
    private var firstAirDate: String? {
        tvShow.firstAirDate
    }
    
    var posterImageURL: URL? {
        URL(string: tvShow.posterPath.fixedPath)
    }
    
    var firstAirDateText: String {
        DateFormatHelper.format(firstAirDate, from: .yyyy__MM__dd, to: .dd_MMMM_yyyy)
    }
}
