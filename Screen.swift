//
//  Brightness.swift
//  IOSDevice
//
//  Created by Oleksii on 1/10/19.
//

import Foundation

postfix operator %

postfix func % (percentage: Int) -> Double {
    return (Double(percentage) / 100)
}

postfix func % (percentage: Double) -> Int {
    return Int(percentage * 100)
}



//struct Percent: FixedWidthInteger, UnsignedInteger {
//
//}

extension IOSDevice {
    
    
    
    struct Brightness {
        
        func  bright() {
            print(45%) // 0.45
            print(0.45%) // 45
        }
        
        // 0 - 100
        public static var level: UInt8 {
            get {
                let currentBrightness = UInt8(UIScreen.main.brightness * 100)
                return currentBrightness > 100 ? 100 : currentBrightness
            }
            set {
                UIScreen.main.brightness = CGFloat(newValue) / 100
            }
        }
    }
}
