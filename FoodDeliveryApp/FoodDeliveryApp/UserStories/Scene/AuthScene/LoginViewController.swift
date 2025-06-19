//
//  LoginViewController.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 18.06.2025.
//

import UIKit

protocol LoginViewInput: AnyObject {
    func didSignInTap()
    func didSignUpTap()
    func didFacebookTap()
    func didGoogleTap()
    func didForgotTap()
}

enum LoginViewState {
    case initial
    case signIn
    case signUp
}

final class LoginViewController: UIViewController {
    
// MARK: - Properties
    
    private var state: LoginViewState = .initial
    var viewOutput: LoginViewOutput!
    
// MARK: - Views
    
    private lazy var titleLabel = UILabel()
    private lazy var logoImage = UIImageView()
    private lazy var signInUserName = FDTextField()
    private lazy var signInPassword = FDTextField()
    private lazy var signUpUserName = FDTextField()
    private lazy var signUpPassword = FDTextField()
    private lazy var signUpReEnterPassword = FDTextField()
    private lazy var forgotLabel = UILabel()
    private lazy var signInButton = FDButton()
    private lazy var signUpButton = FDButton()
    private lazy var bottomView = FDBottomView()
    private lazy var verticalStack = UIStackView()
    
    
// MARK: - Initializers
    
    init(viewOutput: LoginViewOutput, state: LoginViewState) {
        self.viewOutput = viewOutput
        self.state = state
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
// MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = AppColors.white
        setupLayout()
    }
    
    func facebookPress() {
        print("facebook")
    }
    
    func googlePress() {
        print("google")
    }
}

private extension LoginViewController {
    
    func setupLayout() {
        
        switch state {
        case .initial:
            setupLogoImage()
            setupSignInButton()
            setupSignUpButton()
            setupBottomView()
            
        case .signIn:
            setupBottomView()
            setupStack()
            setupSignInUserName()
            setupSignInPassword()
            setupTitleLabel()
            setupSignInButton()
            setupForgotLabel()
            
        case .signUp:
            setupBottomView()
            setupStack()
            setupSignInUserName()
            setupSignInPassword()
            setupSignUpReEnterPassword()
            setupTitleLabel()
            setupSignInButton()
            setupForgotLabel()
        }
    }
    
    func setupStack() {
        view.addSubview(verticalStack)
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.axis = .vertical
        verticalStack.spacing = 20
        
        switch state {
        case .signIn:
            verticalStack.addArrangedSubview(signInUserName)
            verticalStack.addArrangedSubview(signInPassword)
            
            NSLayoutConstraint.activate([
                verticalStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
                verticalStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
            ])
            
        case .signUp:
            verticalStack.addArrangedSubview(signUpUserName)
            verticalStack.addArrangedSubview(signUpPassword)
            verticalStack.addArrangedSubview(signUpReEnterPassword)
            
            NSLayoutConstraint.activate([
                verticalStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
                verticalStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
            ])
            
        case .initial:
            return
        }
    }
    
    func setupBottomView () {
        
        view.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView.button2Action = facebookPress
        bottomView.button1Action = googlePress
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 150)
            
        ])
    }
    
    func setupSignInUserName() {
        
//        view.addSubview(signInUserName)
        signInUserName.translatesAutoresizingMaskIntoConstraints = false
        
        switch state {
        case .signIn:
            signInUserName.placeholder = "Username"
            NSLayoutConstraint.activate([
//                signInUserName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//                signInUserName.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 363),
                
                signInUserName.heightAnchor.constraint(equalToConstant: 50),
                signInUserName.widthAnchor.constraint(equalToConstant: 354)
                
            ])
        case .signUp:
            signUpUserName.placeholder = "Enter username"
            NSLayoutConstraint.activate([
//                signInUserName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//                signInUserName.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 328),
                
                signUpUserName.heightAnchor.constraint(equalToConstant: 50),
                signUpUserName.widthAnchor.constraint(equalToConstant: 354)
                
            ])
        case .initial:
            return
        }
    }
    
    func setupSignInPassword() {
        
//        view.addSubview(signInPassword)
        signInPassword.translatesAutoresizingMaskIntoConstraints = false
        signInPassword.placeholder = "Password"
        
        switch state {
        case .signIn:
            signInPassword.placeholder = "Password"
            NSLayoutConstraint.activate([
//                signInPassword.leftAnchor.constraint(equalTo: self.signInUserName.leftAnchor),
//                signInPassword.rightAnchor.constraint(equalTo: self.signInUserName.rightAnchor),
                signInPassword.topAnchor.constraint(equalTo: signInUserName.bottomAnchor, constant: 20),
                
                signInPassword.heightAnchor.constraint(equalToConstant: 50),
                signInPassword.widthAnchor.constraint(equalToConstant: 354)
            ])
            
        case .signUp:
            signUpPassword.placeholder = "Enter password"
            NSLayoutConstraint.activate([
//                signInPassword.leftAnchor.constraint(equalTo: self.signInUserName.leftAnchor),
//                signInPassword.rightAnchor.constraint(equalTo: self.signInUserName.rightAnchor),
//                signInPassword.topAnchor.constraint(equalTo: signInUserName.bottomAnchor, constant: 20),
                
                signUpPassword.heightAnchor.constraint(equalToConstant: 50),
                signUpPassword.widthAnchor.constraint(equalToConstant: 354)
                
            ])
        case .initial:
            return
        }
    }
    
    func setupLogoImage() {
        
        view.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.layer.cornerRadius = 70
        logoImage.image = .init(resource: .appstore)
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 109),
            
            logoImage.heightAnchor.constraint(equalToConstant: 300),
            logoImage.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    func setupTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .Roboto.bold.size(of: 24)
        
        switch state {
        case .signIn:
            titleLabel.text = "Sign in"
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: verticalStack.topAnchor, constant: -58),
                titleLabel.leadingAnchor.constraint(equalTo: verticalStack.leadingAnchor, constant: 4)
                
            ])
        case .signUp:
            titleLabel.text = "Sign up"
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: verticalStack.topAnchor, constant: -58),
                titleLabel.leadingAnchor.constraint(equalTo: verticalStack.leadingAnchor, constant: 4)
//                titleLabel.leadingAnchor.constraint(equalTo: signInUserName.leadingAnchor, constant: 4)
                
            ])
        case .initial:
            return
        }
    }
    
    func setupSignInButton() {
        
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign in")
        signInButton.scheme = .orange
        signInButton.action = didSignInTap
        
        switch state {
        case .initial:

            NSLayoutConstraint.activate([
                signInButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 60),
                signInButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
                signInButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
                signInButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        case .signIn:
            NSLayoutConstraint.activate([
                signInButton.topAnchor.constraint(equalTo: verticalStack.bottomAnchor, constant: 30),
                signInButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
                signInButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
                signInButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        case .signUp:
            NSLayoutConstraint.activate([
                signInButton.topAnchor.constraint(equalTo: verticalStack.bottomAnchor, constant: 30),
                signInButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
                signInButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
                signInButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    }
    
    func setupSignUpButton() {
        
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up")
        signUpButton.scheme = .grey
        signUpButton.action = didSignUpTap
        
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20)
        ])
    }
    
    func setupSignUpReEnterPassword() {
        
//        view.addSubview(signUpReEnterPassword)
        signUpReEnterPassword.translatesAutoresizingMaskIntoConstraints = false
        signUpReEnterPassword.placeholder = "Re-enter password"
        
            NSLayoutConstraint.activate([
//                signUpReEnterPassword.leftAnchor.constraint(equalTo: self.signInUserName.leftAnchor),
//                signUpReEnterPassword.rightAnchor.constraint(equalTo: self.signInUserName.rightAnchor),
//                signUpReEnterPassword.topAnchor.constraint(equalTo: signInPassword.bottomAnchor, constant: 20),
                
                signUpReEnterPassword.heightAnchor.constraint(equalToConstant: 50),
                signUpReEnterPassword.widthAnchor.constraint(equalToConstant: 354)
            ])
    }
    
    func setupForgotLabel() {
        view.addSubview(forgotLabel)
                
        forgotLabel.translatesAutoresizingMaskIntoConstraints = false
        forgotLabel.font = .Roboto.regular.size(of: 14)
        forgotLabel.text = "Forgot Password?"
                
                switch state {
                case .signIn:
                    NSLayoutConstraint.activate([
                        forgotLabel.rightAnchor.constraint(equalTo: signInButton.rightAnchor),
                        forgotLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20)
                        
                        
                    ])
                case .signUp:
                    NSLayoutConstraint.activate([
                        forgotLabel.rightAnchor.constraint(equalTo: signInButton.rightAnchor),
                        forgotLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20)
                    ])
                case .initial:
                    return
                }
    }
}

extension LoginViewController: LoginViewInput {
    
    func didSignInTap() {
        switch state {
        case .initial:
            viewOutput.goToSignIn()
        case .signIn:
            return
        case .signUp:
            return
        }
    }
    
    func didSignUpTap() {
        switch state {
        case .initial:
            viewOutput.goToSingUp()
        case .signIn:
            return
        case .signUp:
            return
        }
    }
    
    func didFacebookTap() {
        
    }
    
    func didGoogleTap() {
        
    }
    
    func didForgotTap() {
        
    }
}

#Preview("LoginVC") {
    
    let presenter = LoginPresenter()
    LoginViewController(viewOutput: presenter, state: .signIn)
}
