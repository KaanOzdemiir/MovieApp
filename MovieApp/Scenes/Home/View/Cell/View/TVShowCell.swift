//
//  TVShowCell.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import UIKit

class TVShowCell: UICollectionViewCell {

    var viewModel: TVShowCellViewModel? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureViews()
    }
    
    private func updateViews() {
        guard let viewModel = viewModel else { return }
        label.text = viewModel.name
    }
    
    private func configureViews() {
        label.textAlignment = .center
    }
}
