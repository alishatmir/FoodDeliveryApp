//
//  FDTextField.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 19.06.2025.
//
import UIKit

class FDTextField: UITextField {
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        self.layer.cornerRadius = 24
        self.backgroundColor = AppColors.backgroundGrey
        self.font = .Roboto.regular.size(of: 14)
        self.autocapitalizationType = .none
        
        self.placeholder = "Text to input"
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.frame.height))
        self.leftView = paddingView
        self.rightView = paddingView
        self.leftViewMode = .always
        self.rightViewMode = .always
    }
}
