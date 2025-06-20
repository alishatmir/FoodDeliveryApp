//
//  LoginViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 19.06.2025.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func loginStart(login: String, password: String)
    func registrationStart()
    func goToFacebookLogin()
    func goToGoogleLogin()
    func goToSignIn()
    func goToSingUp()
    func goToForgotPass()
    func didBackTap()
}

final class LoginPresenter {
    
    weak var viewInput: LoginViewInput?
    
    private var coordinator: LoginCoordinator?
    
    init(coordinator: LoginCoordinator? = nil, viewInput: LoginViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
}

private extension LoginPresenter {
    func goToMainScreen() {
        coordinator?.finish()
    }
}

extension LoginPresenter: LoginViewOutput {
    
    func loginStart(login: String, password: String) {
        viewInput?.startLoader()
        if login == "alinatmir@gmail.com" && password == "test" {
            DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
                DispatchQueue.main.async {
                    self.goToMainScreen()
                }
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                print("wrong email")
                self.viewInput?.stopLoader()
            }
        }
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
    
    func didBackTap() {
        
    }
    
    
}
