//
//  UIFont+extension.swift
//  FoodDeliveryApp
//
//  Created by Алина Тихомирова on 17.06.2025.
//

import UIKit

extension UIFont {
    enum Roboto {
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.black, size: size)!
            }
        }
        
        enum blackItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.blackItalic, size: size)!
            }
        }
        
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.bold, size: size)!
            }
        }
        
        enum boldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.boldItalic, size: size)!
            }
        }
        
        enum extraBold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraBold, size: size)!
            }
        }
        
        enum extraBoldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraBoldItalic, size: size)!
            }
        }
        
        enum extraLight {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraLight, size: size)!
            }
        }
        
        enum extraLightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraLightItalic, size: size)!
            }
        }
        
        enum italic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.italic, size: size)!
            }
        }
        
        enum light {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.light, size: size)!
            }
        }
        
        enum lightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.lightItalic, size: size)!
            }
        }
        
        enum medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.medium, size: size)!
            }
        }
        
        enum mediumItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.mediumItalic, size: size)!
            }
        }
        
        enum regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.regular, size: size)!
            }
        }
        
        enum semiBold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.semiBold, size: size)!
            }
        }
        
        enum semiBoldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.semiBoldItalic, size: size)!
            }
        }
        
        enum thin {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.thin, size: size)!
            }
        }
        
        enum thinItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.thinItalic, size: size)!
            }
        }
    }
}
private extension UIFont {
    enum Constants {
        enum Roboto {
            static let black = "Roboto-Black"
            static let blackItalic = "Roboto-BlackItalic"
            static let bold = "Roboto-Bold"
            static let boldItalic = "Roboto-BoldItalic"
            static let extraBold = "Roboto-ExtraBold"
            static let extraBoldItalic = "Roboto-ExtraBoldItalic"
            static let extraLight = "Roboto-ExtraLight"
            static let extraLightItalic = "Roboto-ExtraLightItalic"
            static let italic = "Roboto-Italic"
            static let light = "Roboto-Light"
            static let lightItalic = "Roboto-LightItalic"
            static let medium = "Roboto-Medium"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular = "Roboto-Regular"
            static let semiBold = "Roboto-SemiBold"
            static let semiBoldItalic = "Roboto-SemiBoldItalic"
            static let thin = "Roboto-Thin"
            static let thinItalic = "Roboto-ThinItalic"
        }
    }
}
