//
//  TVShowCellViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Foundation
import API

class TVShowCellViewModel {
    
    var tvShow: TVShowResult
    
    init(tvShow: TVShowResult) {
        self.tvShow = tvShow
    }
    
    var name: String? {
        tvShow.name
    }
}
