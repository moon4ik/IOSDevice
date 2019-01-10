//
//  IOSDevice.swift
//  IOSDevice
//
//  Created by Oleksii Mykhailenko on 12/17/18.
//

import Foundation

public struct IOSDevice {
    
    private init(){}
    
    public static var name: String {
        return UIDevice.current.name
    }
    
    public static var osVersion: String {
        return UIDevice.current.systemName + UIDevice.current.systemVersion
    }
    
    public static var model: String {
        return UIDevice.current.model
    }
    
    public static var localizedModel: String {
        return UIDevice.current.localizedModel
    }
    
//    public static var code: String {
//        var systemInfo = utsname()
//        uname(&systemInfo)
//        let code: String = String(validatingUTF8: NSString(bytes: &systemInfo.machine,
//                                                           length: Int(_SYS_NAMELEN),
//                                                           encoding: String.Encoding.ascii.rawValue)!.utf8String!)!
//        return code
//    }
    
}
