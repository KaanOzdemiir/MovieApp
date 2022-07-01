//
//  BaseViewModel.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import Helpers

protocol BaseViewModelProtocol: AnyObject {
    var showLoading: VoidClosure? { get set }
    var hideLoading: VoidClosure? { get set }
}

class BaseViewModel<R: Router>: BaseViewModelProtocol{
    
    var router: R
    
    init(router: R) {
        self.router = router
    }
    
    var showLoading: VoidClosure?
    
    var hideLoading: VoidClosure?
    
}
