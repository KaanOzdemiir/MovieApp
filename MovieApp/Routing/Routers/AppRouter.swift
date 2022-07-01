//
//  AppRouter.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit
import Helpers

class AppRooter: Router, AppRooter.Routes {
    
    typealias Routes = AppRoute
    static let shared = AppRooter()
    
    func startApp() {
        setRootViewController()
    }
    
}
