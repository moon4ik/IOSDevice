//
//  Battery.swift
//  IOSDevice
//
//  Created by Oleksii on 1/10/19.
//

import Foundation

extension IOSDevice {
    
    public struct Battery {
        
        static public var level: Int {
            UIDevice.current.isBatteryMonitoringEnabled = true
            let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100))
            UIDevice.current.isBatteryMonitoringEnabled = false
            return batteryLevel
        }
        
        static public var state: UIDevice.BatteryState {
            return UIDevice.current.batteryState
        }
        
        static public var isLowPowerModel: Bool {
            return ProcessInfo.processInfo.isLowPowerModeEnabled
        }
    }
}
