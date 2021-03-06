//
//  BaseController.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

protocol BaseControllerProtocol {
    func subscribeViewModel()
    func configureViews()
}

class BaseController<V: BaseViewModelProtocol>: UIViewController, BaseControllerProtocol {
    
    var viewModel: V
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        subscribeViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    init(viewModel: V) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func subscribeViewModel() {
        viewModel.showLoading = { [weak self] in
            self?.showLoading()
        }
        
        viewModel.hideLoading = { [weak self] in
            self?.hideLoading()
        }
    }
    
    func configureViews() { }
}
