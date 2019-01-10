//
//  Brightness.swift
//  IOSDevice
//
//  Created by Oleksii on 1/10/19.
//

import Foundation

extension IOSDevice {
    
    struct Screen {
        
        public static let width: CGFloat = UIScreen.main.bounds.width
        public static let height: CGFloat = UIScreen.main.bounds.height
        public static let resolution: String = "\(width)x\(height)"
        
        // 0 - 100
        public static var brightness: UInt8 {
            get {
                return UInt8(UIScreen.main.brightness * 100)
            }
            set {
                UIScreen.main.brightness = CGFloat(newValue.normolized(to: 0...100)) / 100
            }
        }
    }
}
