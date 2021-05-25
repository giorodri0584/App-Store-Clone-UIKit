//
//  SearchResultCell.swift
//  App Store Clone
//
//  Created by Giomar Rodriguez on 5/24/21.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    static let identifier = "SearchResultCell"
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemRed
        imageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    let appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "App Name Here"
        return label
    }()
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos & Videos"
        return label
    }()
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26M"
        return label
    }()
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.layer.cornerRadius = 16
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let labelsStackView = UIStackView(arrangedSubviews: [
            appNameLabel,
            categoryLabel,
            ratingsLabel
        ])
        labelsStackView.axis = .vertical
        
        let screenShotsStackView = UIStackView(arrangedSubviews: [
            createScreenShotImageView(),
            createScreenShotImageView(),
            createScreenShotImageView()
        ])
        screenShotsStackView.spacing = 12
        screenShotsStackView.distribution = .fillEqually
        
        let topStackView = UIStackView(arrangedSubviews: [
            iconImageView,
            labelsStackView,
            getButton
        ])
        topStackView.spacing = 12
        topStackView.alignment = .center
        
        let overallStackView = UIStackView(arrangedSubviews: [
            topStackView,
            screenShotsStackView
        ])
        overallStackView.spacing = 12
        overallStackView.axis = .vertical
        
        addSubview(overallStackView)
        overallStackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 16, right: 16))
    }
    
    func createScreenShotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemBlue
        return imageView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
