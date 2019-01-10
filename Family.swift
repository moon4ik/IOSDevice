//
//  Family.swift
//  IOSDevice
//
//  Created by Oleksii on 1/10/19.
//

import Foundation

extension IOSDevice {
    
    public enum FamilyType: String {
        case unknown = "unknown"
        case simulator = "simulator"
        case iPodtouch = "iPod touch"
        case iPhone = "iPhone"
        case iPad = "iPad"
    }
    
    static public func isIPad() -> Bool {
        return family == .iPad
    }
    
    static public func isIPhone() -> Bool {
        return family == .iPhone
    }
    
    static public func isIPodtouch() -> Bool {
        return family == .iPodtouch
    }
    
    static public func isSimulator() -> Bool {
        return family == .simulator
    }
    
    static public var family: FamilyType {
        if code.contains("iPhone") {
            return .iPhone
        } else if code.contains("iPad") {
            return .iPad
        } else if code.contains("iPod") {
            return .iPodtouch
        } else if code == "i386" || code == "x86_64" {
            return .simulator
        } else {
            return .unknown
        }
    }
}
