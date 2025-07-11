//
//  OnboardingPartViewController.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

class OnboardingPartViewController: UIViewController {
    
    
// MARK: - Properties
    var imageToShow: UIImage? {
        didSet {
            imageView.image = imageToShow
        }
    }
    
    var titleText: String? {
        didSet {
            titleLabel.text = titleText
        }
    }
    
    var descriptionText: String? {
        didSet {
            descriptionLabel.text = descriptionText
        }
    }

    var buttonText: String?
    
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()

// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
}

// MARK: - Layout
private extension OnboardingPartViewController {
    
    func setupLayout() {
        
        setupView()
        setupImageView()
        setupTitleLabel()
        setupDescriptionLabel()
    }
    
    func setupView() {
        
        view.backgroundColor = AppColors.orange
    }
    
    func setupImageView () {
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 292),
            
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setupTitleLabel () {
        
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.font = .Roboto.bold.size(of: 24)
        titleLabel.textColor = AppColors.backgroundWhite
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setupDescriptionLabel () {
        
        view.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.font = .Roboto.regular.size(of: 14)
        descriptionLabel.textColor = AppColors.backgroundWhite
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 71),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72)
        ])
    }
}
