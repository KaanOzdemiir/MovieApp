//
//  DetailController.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import UIKit

class DetailController: BaseController<DetailViewModel> {

    // MARK: IBOutlet
    @IBOutlet private weak var bookMarkButton: UIButton!
    @IBOutlet private weak var backButton: UIButton!
    @IBOutlet private weak var backdropImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var scrollViewTop: NSLayoutConstraint!
    @IBOutlet private weak var tvShowNameLabel: UILabel!
    @IBOutlet private weak var firstAirDateLabel: UILabel!
    @IBOutlet private weak var voteAvarageLabel: UILabel!
    @IBOutlet private weak var overviewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func applyShadow() {
        scrollView.layer.shadowColor = UIColor.gray.cgColor
        scrollView.layer.shadowOffset = CGSize(width: 1, height: 1)
        scrollView.layer.shadowOpacity = 1
    }
    
    override func configureViews() {
        backdropImageView.applyGradient(isVertical: true, colorArray: [UIColor.black.withAlphaComponent(0.7), UIColor.black.withAlphaComponent(0)])
        backdropImageView.kf.indicatorType = .activity
        backButton.setImage(viewModel.backImage, for: .normal)
        backButton.tintColor = .white
        
        bookMarkButton.setImage(viewModel.bookmarkImage, for: .normal)
        bookMarkButton.tintColor = .white
        
        scrollView.layer.cornerRadius = 36
        scrollView.layer.masksToBounds = true
        scrollView.isScrollEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.alwaysBounceVertical = false
        
        tvShowNameLabel.textColor = .basic900
        tvShowNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        firstAirDateLabel.textColor = .basic600
        firstAirDateLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        voteAvarageLabel.textColor = .basic600
        voteAvarageLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        overviewLabel.textColor = .basic900
        overviewLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        overviewLabel.numberOfLines = 0
        
        titleLabel.alpha = 0
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        
    }
    private func updateViews() {
        backdropImageView.kf.setImage(with: viewModel.backdropImageURL)
        tvShowNameLabel.text = viewModel.nameText?.uppercased()
        titleLabel.text = viewModel.nameText?.uppercased()
        firstAirDateLabel.text = viewModel.firstAirDateText
        voteAvarageLabel.text = viewModel.voteAvarageText
        voteAvarageLabel.superview?.isHidden = viewModel.shouldHideVoteAvarage
        overviewLabel.text = viewModel.overviewText
    }
}

// MARK: Actions
extension DetailController {
    @IBAction private func backButtonTapped(_ sender: UIButton) {
        viewModel.close()
    }
}
