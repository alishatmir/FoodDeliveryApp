//
//  TabBarViewController.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
        configureControllers()
    }
    
    private func configureAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        
        tabBarAppearance.backgroundImage = .init()
        tabBarAppearance.backgroundColor = AppColors.background
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
        
        if #available(iOS 15, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
        
        tabBar.tintColor = AppColors.background
        tabBar.barTintColor = AppColors.background
        tabBar.isTranslucent = false
        tabBar.backgroundColor = AppColors.background
    }
    
    private func configureControllers() {
        let homeListController = HomeViewController()
        homeListController.tabBarItem = UITabBarItem(
            title: nil,
            image: .init(resource: .home),
            selectedImage: .init(resource: .homeActivate)
        )
        
        let profileController = ProfileViewController()
        profileController.tabBarItem = UITabBarItem(
            title: nil,
            image: .init(resource: .profile),
            selectedImage: .init(resource: .profileActivate)
        )
        
        viewControllers = [homeListController, profileController]
    }
}
