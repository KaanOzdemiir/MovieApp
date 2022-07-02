//
//  HomeController.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

class HomeController: BaseController<HomeViewModel> {
    
    // MARK: Outlets
    @IBOutlet private weak var tvShowCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func subscribeViewModel() {
        super.subscribeViewModel()
        viewModel.updateViews = { [weak self] in
            guard let self = self else { return }
            self.tvShowCollectionView.reloadData()
        }
    }

    override func configureViews() {
        tvShowCollectionView.register(cell: TVShowCell.self)
        tvShowCollectionView.dataSource = self
        tvShowCollectionView.delegate = self
    }
}

// MARK: UICollectionViewDataSource
extension HomeController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cell: TVShowCell.self, indexPath: indexPath)
        cell.viewModel = viewModel.cellViewModel(at: indexPath)
        return cell
    }
}

// MARK: UICollectionViewDelegate
extension HomeController: UICollectionViewDelegate {
    
}

// MARK: UICollectionViewDelegateFlowLayout
extension HomeController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.cellSize
    }
}

