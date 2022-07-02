//
//  TVShowCell.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import UIKit
import Kingfisher

class TVShowCell: UICollectionViewCell {

    // MARK: IBOutlets
    @IBOutlet private weak var posterImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var voteRateLabel: UILabel!
    @IBOutlet private weak var firstAirDateLabel: UILabel!
    
    var viewModel: TVShowCellViewModel? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureViews()
    }
    
    private func updateViews() {
        guard let viewModel = viewModel else { return }
        nameLabel.text = viewModel.name
        voteRateLabel.attributedText = viewModel.voteAvarageText
        voteRateLabel.superview?.isHidden = viewModel.shouldHideVoteAvarage
        firstAirDateLabel.text = viewModel.firstAirDateText
        posterImageView.kf.setImage(with: viewModel.posterImageURL)
    }
    
    private func configureViews() {
        posterImageView.kf.indicatorType = .activity
        posterImageView.layer.cornerRadius = 36
        posterImageView.layer.masksToBounds = true
        
        nameLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        nameLabel.textColor = .basic900
        
        voteRateLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        voteRateLabel.textColor = .basic600
        
        firstAirDateLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        firstAirDateLabel.textColor = .basic600
    }
}
