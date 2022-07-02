//
//  BaseViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import Helpers
import API

protocol BaseViewModelProtocol: AnyObject {
    var showLoading: VoidClosure? { get set }
    var hideLoading: VoidClosure? { get set }
}

class BaseViewModel<R: Router>: BaseViewModelProtocol {
    
    var dataProvider: DataProviderProtocol
    var router: R
    
    init(router: R, dataProvider: DataProviderProtocol = APIDataProvider.shared) {
        self.router = router
        self.dataProvider = dataProvider
    }
    
    var showLoading: VoidClosure?
    
    var hideLoading: VoidClosure?
    
}
