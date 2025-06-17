//
//  Coordinator.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

enum CoordinatorType {
    case app
    case onboarding
    case home
    case list
    case order
    case profile
}

protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set}
    var type: CoordinatorType { get }
    var navigationController: UINavigationController? { get set}
    var finishDelegate: CoordinatorFinishDelegate? { get set}
    
    func start()
    func finish()
}

extension CoordinatorProtocol {
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }
    func removeChildCoordinator (_ childCoordinator: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter { $0 !== childCoordinator }
    }
}
protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorDidFinished(childCoordinator: CoordinatorProtocol)
}
