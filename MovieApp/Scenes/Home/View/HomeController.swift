//
//  HomeController.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

class HomeController: BaseController<HomeViewModel> {
    
    // MARK: Outlets
    @IBOutlet private weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func configureViews() {
        movieTableView.register(cell: MovieCell.self)
        movieTableView.dataSource = self
        movieTableView.delegate = self
    }
}

// MARK: UITableViewDataSource
extension HomeController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cell: MovieCell.self, indexPath: indexPath)
        cell.backgroundColor = .random
        return cell
    }
}

// MARK: UITableViewDelegate
extension HomeController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        viewModel.cellHeight
    }
}
