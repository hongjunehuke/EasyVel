//
//  UIColor+Extension.swift
//  VelogOnMobile
//
//  Created by 홍준혁 on 2023/04/29.
//

import UIKit

extension UIColor {
    static var brandColor: UIColor {
        return UIColor(hex: "#1EC897")
    }
    static var grayColor: UIColor {
        return UIColor(hex: "#EEEEEE")
    }
    static var lightGrayColor: UIColor {
        return UIColor(hex: "#EBEBEB")
    }
    static var darkGrayColor: UIColor {
        return UIColor(hex: "#585858")
    }
    static var lineColor: UIColor {
        return UIColor(hex: "#E2E2E2")
    }
    static var textGrayColor: UIColor {
        return UIColor(hex: "#6F6F6F")
    }
    static var ECECEC: UIColor {
        return UIColor(hex: "#ECECEC")
    }
    static var A4A4A4: UIColor {
        return UIColor(hex: "#A4A4A4")
    }
    static var gray100: UIColor {
        return UIColor(hex: "#F8F9FA")
    }
    static var gray200: UIColor {
        return UIColor(hex: "#C9CCD0")
    }
    static var gray300: UIColor {
        return UIColor(hex: "#868E96")
    }
}

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()

        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }

        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)

        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: alpha)
    }
}
