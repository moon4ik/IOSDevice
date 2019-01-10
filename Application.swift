//
//  Application.swift
//  IOSDevice
//
//  Created by Oleksii Mykhailenko on 1/10/19.
//

import Foundation

extension IOSDevice {
    
    public struct Application {

        // Application version
        static let version: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String

        // Application build version
        static let build: String = Bundle.main.infoDictionary?["CFBundleVersion"] as! String

        // Application full version
        static let fullVersion: String = {
            return "v.\(version)(\(build))"
        }()
        
        // Application name
        static let name: String = {
            if var appName = Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String {
                return appName
            } else {
                return Bundle.main.infoDictionary?["CFBundleName"] as! String
            }
        }()
        
        static func fullVersion(prefix: String = "v.") -> String {
            return prefix + version + " " + "(" + build + ")"
        }
    }
    
}
