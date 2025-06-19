//
//  LoginViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 19.06.2025.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func loginStart()
    func registrationStart()
    func goToFacebookLogin()
    func goToGoogleLogin()
    func goToSignIn()
    func goToSingUp()
    func goToForgotPass()
    func back()
}

final class LoginPresenter {
    
    weak var viewInput: LoginViewInput?
    
    private var coordinator: AppCoordinator?
    
    init(coordinator: AppCoordinator? = nil, viewInput: LoginViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
}

extension LoginPresenter: LoginViewOutput {
    func loginStart() {
        
    }
    
    func registrationStart() {
        
    }
    
    func goToFacebookLogin() {
        
    }
    
    func goToGoogleLogin() {
        
    }
    
    func goToSignIn() {
        coordinator?.showSingInScene()
    }
    
    func goToSingUp() {
        coordinator?.showSingUpScene()
    }
    
    func goToForgotPass() {
        
    }
    
    func back() {
        
    }
    
    
}
