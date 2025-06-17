//
//  ProfileViewController.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//
import UIKit

final class ProfileViewController: UIViewController {
    
    lazy private var userPhotoImageView: UIImageView = {
        let profileImage = UIImage(systemName: "person.crop.circle.fill")
        let imageView = UIImageView(image: profileImage)
        let image = UIImage(resource: .man)
        imageView.image = image
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = AppColors.background
    }
    
    private func addUserPhotoImageView() {
        view.addSubview(userPhotoImageView)
        
        NSLayoutConstraint.activate([
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 162),
            userPhotoImageView.heightAnchor.constraint(equalToConstant: 162),
            userPhotoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userPhotoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 94)
        ])
    }
}
