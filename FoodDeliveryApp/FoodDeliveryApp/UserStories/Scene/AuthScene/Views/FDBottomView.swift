//
//  BottomView.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 18.06.2025.
//

import UIKit

final class FDBottomView: UIView {
    
    private let label = UILabel()
    private let view1 = UIView()
    private let view2 = UIImageView()
    private let button1 = UIButton()
    private let button2 = UIButton()
    
    var button1Action: (() -> Void)?
    var button2Action: (() -> Void)?
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        self.backgroundColor = AppColors.white
        setupLabel()
        setupView1()
        setupView2()
        setupButton1()
        setupButton2()
    }
    
    private func setupLabel(){
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or connect with"
        label.textColor = AppColors.darkGrey
        label.font = .Roboto.regular.size(of: 14)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30)
        ])
    }
    
    private func setupView1(){
        self.addSubview(view1)
        view1.backgroundColor = AppColors.lineGrey
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view1.centerYAnchor.constraint(equalTo: label.centerYAnchor, constant: 0),
            view1.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            view1.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -12),
            view1.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
    
    private func setupView2(){
        self.addSubview(view2)
        view2.image = .init(resource: .picFood)
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.contentMode = .scaleAspectFit
//        view2.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 18),
            view2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: -20),
            
            view2.heightAnchor.constraint(equalToConstant: 150),
            view2.widthAnchor.constraint(equalToConstant: 281)
        ])
    }
    
    private func setupButton1() {
        self.addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setImage(.init(resource: .google), for: .normal)
        
        button1.addTarget(
            self,
            action: #selector(didButton1Tap),
            for: .touchUpInside
        )
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            
            button1.heightAnchor.constraint(equalToConstant: 40),
            button1.widthAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
    private func setupButton2() {
        self.addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setImage(.init(resource: .facebook), for: .normal)
        
        button2.addTarget(
            self,
            action: #selector(didButton2Tap),
            for: .touchUpInside
        )
        
        NSLayoutConstraint.activate([
            button2.centerYAnchor.constraint(equalTo: button1.centerYAnchor),
            button2.rightAnchor.constraint(equalTo: button1.leftAnchor, constant: -20),
            
            
            button2.heightAnchor.constraint(equalToConstant: 40),
            button2.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}

private extension FDBottomView {
    
    @objc func didButton1Tap() {
        button1Action?()
    }
    
    @objc func didButton2Tap() {
        button2Action?()
    }
}

//#Preview("BottomView", traits: .fixedLayout(width: 400, height: 150)) {
//    FDBottomView()
//}
