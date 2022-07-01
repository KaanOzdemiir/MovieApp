//
//  HomeViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

class HomeViewModel: BaseViewModel<Router> {
    
    var numberOfRows: Int {
        20
    }
    
    var cellHeight: CGFloat {
        160
    }
}
