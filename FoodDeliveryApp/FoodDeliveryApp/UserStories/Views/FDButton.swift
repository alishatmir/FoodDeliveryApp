//
//  FDButton.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 19.06.2025.
//

import UIKit

enum FDButtonColorSchemes {
    case white
    case orange
    case grey
}

final class FDButton: UIView {
    
    private let button = UIButton()
    var action: (() -> Void)?
    
    var scheme: FDButtonColorSchemes = .white {
        didSet {
            setColorScheme(scheme: scheme)
        }
    }
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {

        setupButton()
    }
    
    private func setupButton() {
        self.addSubview(button)
        button.addTarget(
            self,
            action: #selector(didButtonPressed),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(AppColors.black, for: .normal)
        button.layer.cornerRadius = 24
        button.titleLabel?.font = .Roboto.black.size(of: 18)
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            button.topAnchor.constraint(equalTo: self.topAnchor),
            
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 354)
        ])
        
        setColorScheme(scheme: .white)
    }
    
    private func setColorScheme(scheme: FDButtonColorSchemes) {
        switch scheme {
            
        case .white:
            button.backgroundColor = AppColors.backgroundWhite
            button.setTitleColor(AppColors.orange, for: .normal)
        case .orange:
            button.backgroundColor = AppColors.orange
            button.setTitleColor(AppColors.backgroundWhite, for: .normal)
        case .grey:
            button.backgroundColor = AppColors.backgroundWhite
            button.setTitleColor(AppColors.black, for: .normal)
        }
    }
    @objc func didButtonPressed() {
        guard let action = self.action else { return }
        action()
    }
    
    public func setTitle(_ title: String?) {
        
        button.setTitle(title, for: .normal)
        
    }
}
