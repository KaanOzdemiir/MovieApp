//
//  UIViewController+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

public extension UIViewController {
    
    func showLoading() {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.color = .white
        indicator.backgroundColor = .black.withAlphaComponent(0.5)
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        
        view.addSubview(indicator)
        NSLayoutConstraint.activate([
            indicator.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            indicator.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            indicator.topAnchor.constraint(equalTo: view.topAnchor),
            indicator.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        view.bringSubviewToFront(indicator)
    }
    
    func hideLoading() {
        view.subviews.filter({ $0 is UIActivityIndicatorView }).forEach({ $0.removeFromSuperview() })
    }
}
