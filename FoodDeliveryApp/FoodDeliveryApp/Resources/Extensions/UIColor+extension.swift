//
//  UIColor+extension.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//
import UIKit


extension UIColor {
    func hex(_ rgbValue: UInt64) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: (1.0)
        )
    }
}
