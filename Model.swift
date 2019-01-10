//
//  Model.swift
//  IOSDevice
//
//  Created by Oleksii Mykhailenko on 1/10/19.
//

import Foundation

extension IOSDevice {
    
    public enum ModelType: String {
        case unknown = "unknown"
        // Simulator
        case i386, x86_64 = "iOS Simulator"
        // iPod touch
        case iPod1_1 = "iPod touch 1st Gen"
        case iPod2_1 = "iPod touch 2nd Gen"
        case iPod3_1 = "iPod touch 3rd Gen"
        case iPod4_1 = "iPod touch 4rd Gen"
        case iPod5_1 = "iPod touch 5rd Gen"
        case iPod7_1 = "iPod touch 6rd Gen"
        // iPhone
        case iPhone1_1 = "iPhone"
        case iPhone1_2 = "iPhone 3G"
        case iPhone2_1 = "iPhone 3GS"
        case iPhone3_1, iPhone3_2, iPhone3_3 = "iPhone 4"
        case iPhone4_1 = "iPhone 4S"
        case iPhone5_1, iPhone5_2 = "iPhone 5"
        case iPhone5_3, iPhone5_4 = "iPhone 5C"
        case iPhone6_1, iPhone6_2 = "iPhone 5S"
        case iPhone7_1 = "iPhone 6 Plus"
        case iPhone7_2 = "iPhone 6"
        case iPhone8_1 = "iPhone 6s"
        case iPhone8_2 = "iPhone 6s Plus"
        case iPhone8_3, iPhone8_4 = "iPhone SE"
        case iPhone9_1, iPhone9_3 = "iPhone 7"
        case iPhone9_2, iPhone9_4 = "iPhone 7 Plus"
        case iPhone10_1, iPhone10_4 = "iPhone 8"
        case iPhone10_2, iPhone10_5 = "iPhone 8 Plus"
        case iPhone10_3, iPhone10_6 = "iPhone X"
        case iPhone11_2 = "iPhone XS"
        case iPhone11_4 = "iPhone XS Max China"
        case iPhone11_6 = "iPhone XS Max"
        case iPhone11_8 = "iPhone XR"
        // iPad
        case iPad1_1 = "iPad"
        case iPad1_2 = "iPad 3G"
        case iPad2_1 = "iPad 2nd Gen"
        case iPad2_2 = "iPad 2nd Gen GSM"
        case iPad2_3 = "iPad 2nd Gen CDMA"
        case iPad2_4 = "iPad 2nd Gen New Revision"
        case iPad3_1 = "iPad 3rd Gen"
        case iPad3_2 = "iPad 3rd Gen CDMA"
        case iPad3_3 = "iPad 3rd Gen GSM"
        case iPad2_5 = "iPad mini"
        case iPad2_6 = "iPad mini GSM+LTE"
        case iPad2_7 = "iPad mini CDMA+LTE"
        case iPad3_4 = "iPad 4th Gen"
        case iPad3_5 = "iPad 4th Gen GSM+LTE"
        case iPad3_6 = "iPad 4th Gen CDMA+LTE"
        case iPad4_1 = "iPad Air (WiFi)"
        case iPad4_2 = "iPad Air (GSM+CDMA)"
        case iPad4_3 = "iPad Air 1st Gen (China)"
        case iPad4_4 = "iPad mini Retina (WiFi)"
        case iPad4_5 = "iPad mini Retina (GSM+CDMA)"
        case iPad4_6 = "iPad mini Retina (China)"
        case iPad4_7 = "iPad mini 3 (WiFi)"
        case iPad4_8 = "iPad mini 3 (GSM+CDMA)"
        case iPad4_9 = "iPad Mini 3 (China)"
        case iPad5_1 = "iPad mini 4 (WiFi)"
        case iPad5_2 = "iPad mini 4th Gen (WiFi+Cellular)"
        case iPad5_3 = "iPad Air 2 (WiFi)"
        case iPad5_4 = "iPad Air 2 (Cellular)"
        case iPad6_3 = "iPad Pro (9.7 inch, WiFi)"
        case iPad6_4 = "iPad Pro (9.7 inch, WiFi+LTE)"
        case iPad6_7 = "iPad Pro (12.9 inch, WiFi)"
        case iPad6_8 = "iPad Pro (12.9 inch, WiFi+LTE)"
        case iPad6_11, iPad6_12 = "iPad (2017)"
        case iPad7_1 = "iPad Pro 2nd Gen (WiFi)"
        case iPad7_2 = "iPad Pro 2nd Gen (WiFi+Cellular)"
        case iPad7_3, iPad7_4 = "iPad Pro 10.5-inch"
        case iPad7_5 = "iPad 6th Gen (WiFi)"
        case iPad7_6 = "iPad 6th Gen (WiFi+Cellular)"
        case iPad8_1 = "iPad Pro 3rd Gen (11 inch, WiFi)"
        case iPad8_2 = "iPad Pro 3rd Gen (11 inch, 1TB, WiFi)"
        case iPad8_3 = "iPad Pro 3rd Gen (11 inch, WiFi+Cellular)"
        case iPad8_4 = "iPad Pro 3rd Gen (11 inch, 1TB, WiFi+Cellular)"
        case iPad8_5 = "iPad Pro 3rd Gen (12.9 inch, WiFi)"
        case iPad8_6 = "iPad Pro 3rd Gen (12.9 inch, 1TB, WiFi)"
        case iPad8_7 = "iPad Pro 3rd Gen (12.9 inch, WiFi+Cellular)"
        case iPad8_8 = "iPad Pro 3rd Gen (12.9 inch, 1TB, WiFi+Cellular)"
    }
    
    static public var modelType: ModelType {
        switch code {
        // Simulator
        case "i386": return .i386
        case "x86_64": return .x86_64
        // iPod touch
        case "iPod1_1": return .iPod1_1
        case "iPod2_1": return .iPod2_1
        case "iPod3_1": return .iPod3_1
        case "iPod4_1": return .iPod4_1
        case "iPod5_1": return .iPod5_1
        case "iPod7_1": return .iPod7_1
        // iPhone
        case "iPhone1,1": return .iPhone1_1
        case "iPhone1,2": return .iPhone1_2
        case "iPhone2,1": return .iPhone2_1
        case "iPhone3,1": return .iPhone3_1
        case "iPhone3,2": return .iPhone3_2
        case "iPhone3,3": return .iPhone3_3
        case "iPhone4,1": return .iPhone4_1
        case "iPhone5,1": return .iPhone5_1
        case "iPhone5,2": return .iPhone5_2
        case "iPhone5,3": return .iPhone5_3
        case "iPhone5,4": return .iPhone5_4
        case "iPhone6,1": return .iPhone6_1
        case "iPhone6,2": return .iPhone6_2
        case "iPhone7,1": return .iPhone7_1
        case "iPhone7,2": return .iPhone7_2
        case "iPhone8,1": return .iPhone8_1
        case "iPhone8,2": return .iPhone8_2
        case "iPhone8,3": return .iPhone8_3
        case "iPhone8,4": return .iPhone8_4
        case "iPhone9,1": return .iPhone9_1
        case "iPhone9,2": return .iPhone9_2
        case "iPhone9,3": return .iPhone9_3
        case "iPhone9,4": return .iPhone9_4
        case "iPhone10,1": return .iPhone10_1
        case "iPhone10,2": return .iPhone10_2
        case "iPhone10,3": return .iPhone10_3
        case "iPhone10,4": return .iPhone10_4
        case "iPhone10,5": return .iPhone10_5
        case "iPhone10,6": return .iPhone10_6
        case "iPhone11,2": return .iPhone11_2
        case "iPhone11,4": return .iPhone11_4
        case "iPhone11,6": return .iPhone11_6
        case "iPhone11,8": return .iPhone11_8
        // iPad
        case "iPad1,1": return .iPad1_1
        case "iPad1,2": return .iPad1_2
        case "iPad2,1": return .iPad2_1
        case "iPad2,2": return .iPad2_2
        case "iPad2,3": return .iPad2_3
        case "iPad2,4": return .iPad2_4
        case "iPad3,1": return .iPad3_1
        case "iPad3,2": return .iPad3_2
        case "iPad3,3": return .iPad3_3
        case "iPad2,5": return .iPad2_5
        case "iPad2,6": return .iPad2_6
        case "iPad2,7": return .iPad2_7
        case "iPad3,4": return .iPad3_4
        case "iPad3,5": return .iPad3_5
        case "iPad3,6": return .iPad3_6
        case "iPad4,1": return .iPad4_1
        case "iPad4,2": return .iPad4_2
        case "iPad4,3": return .iPad4_3
        case "iPad4,4": return .iPad4_4
        case "iPad4,5": return .iPad4_4
        case "iPad4,6": return .iPad4_6
        case "iPad4,7": return .iPad4_7
        case "iPad4,8": return .iPad4_8
        case "iPad4,9": return .iPad4_9
        case "iPad5,1": return .iPad5_1
        case "iPad5,2": return .iPad5_2
        case "iPad5,3": return .iPad5_3
        case "iPad5,4": return .iPad5_4
        case "iPad6,3": return .iPad6_3
        case "iPad6,4": return .iPad6_4
        case "iPad6,7": return .iPad6_7
        case "iPad6,8": return .iPad6_8
        case "iPad6,11": return .iPad6_11
        case "iPad6,12": return .iPad6_12
        case "iPad7,1": return .iPad7_1
        case "iPad7,2": return .iPad7_2
        case "iPad7,3": return .iPad7_3
        case "iPad7,4": return .iPad7_4
        case "iPad7,5": return .iPad7_5
        case "iPad7,6": return .iPad7_6
        case "iPad8,1": return .iPad8_1
        case "iPad8,2": return .iPad8_2
        case "iPad8,3": return .iPad8_3
        case "iPad8,4": return .iPad8_4
        case "iPad8,5": return .iPad8_5
        case "iPad8,6": return .iPad8_6
        case "iPad8,7": return .iPad8_7
        case "iPad8,8": return .iPad8_8
        // Unknown
        default: return .unknown
        }
    }
}
