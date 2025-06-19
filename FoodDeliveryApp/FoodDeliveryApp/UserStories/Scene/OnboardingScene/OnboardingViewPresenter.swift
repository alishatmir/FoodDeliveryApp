//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import Foundation

protocol OnboardingViewOutput: AnyObject {
    
    func onboardingFinish()
}

class OnboardingViewPresenter: OnboardingViewOutput {
    
// MARK: - Properties
    private let userStorage = UserStorage.shared
    weak var coordinator: OnboardingCoordinator!
    
    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }
    
    func onboardingFinish() {
        userStorage.passedOnboarding = true
        coordinator.finish()
    }
    
    
}
