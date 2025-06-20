//
//  TabBarViewController.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    
    init(tabBarControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        for tab in tabBarControllers {
            self.addChild(tab)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    private func configureAppearance() {
//        let tabBarAppearance = UITabBarAppearance()
        
//        tabBarAppearance.backgroundImage = .init()
//        tabBarAppearance.backgroundColor = AppColors.backgroundWhite
//        
//        UITabBar.appearance().standardAppearance = tabBarAppearance
//        
//        if #available(iOS 15, *) {
//            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
//        }
        
        tabBar.tintColor = AppColors.orange
        tabBar.barTintColor = AppColors.backgroundWhite
        tabBar.isTranslucent = false
        tabBar.backgroundColor = AppColors.backgroundWhite
        tabBar.itemPositioning = .centered
        tabBar.itemWidth = 40.0
        tabBar.itemSpacing = 40
        
        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -3)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.Roboto.regular.size(of: 12)], for: .normal)
    }
        
}
