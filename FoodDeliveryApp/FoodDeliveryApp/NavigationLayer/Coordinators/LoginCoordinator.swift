//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

// MARK: - LoginCoordinator

class LoginCoordinator: Coordinator {
    
// MARK: - Properties
    
    private let factory = SceneFactory.self

// MARK: - Methods
    
    override func start() {
        showAuthScene()
    }
 
    override func finish() {
        print("LoginCoordinator finish")
        finishDelegate?.coordinatorDidFinished(childCoordinator: self)
    }
}

// MARK: - Navigation

extension LoginCoordinator {
    func showAuthScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeAuthScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showSingInScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeSingInScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showSingUpScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeSingUpScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
}
