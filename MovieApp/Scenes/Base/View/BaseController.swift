//
//  BaseController.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

class BaseController<V: BaseViewModelProtocol>: UIViewController {
    
    var viewModel: V
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribeViewModel()
    }
    
    init(viewModel: V) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func subscribeViewModel() {
        viewModel.showLoading = { [weak self] in
            self?.showLoading()
        }
        
        viewModel.hideLoading = { [weak self] in
            self?.hideLoading()
        }
    }
}
