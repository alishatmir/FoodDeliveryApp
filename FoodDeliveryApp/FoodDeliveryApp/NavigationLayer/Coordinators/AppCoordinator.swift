//
//  ApppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private let userStorage = UserStorage.shared
    private let factory = SceneFactory.self
    
    override func start() {
        if userStorage.passedOnboarding {
            showAuthFlow()
        } else {
            showOnboardingFlow()
        }
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
}

// MARK: - Methods

extension AppCoordinator {
    
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

// MARK: - Navigation methods

private extension AppCoordinator {
    func showAuthFlow() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeAuthScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        factory.makeOnboardingFlow(coordinator: self, finishDelegate: self, navigationController: navigationController)
    }
    
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        let tabBarController = factory.makeMainFlow(coordinator: self, finishDelegate: self)
        navigationController.pushViewController(tabBarController, animated: true)
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinished(childCoordinator: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinator)
        
        switch childCoordinator.type {
        case .onboarding:
            navigationController?.viewControllers.removeAll()
            showAuthFlow()
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: true)
        }
    }
}
