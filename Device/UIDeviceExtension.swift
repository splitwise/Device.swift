//
//  UIDeviceExtension.swift
//  Device
//
//  Created by Johannes Schickling on 7/20/15.
//
//

// MARK: Imports

import Foundation
import UIKit

// MARK: -

/// Enum representing the different types of iOS devices available
public enum DeviceType: String, CaseIterable {
    case iPhone2G

    case iPhone3G
    case iPhone3GS

    case iPhone4
    case iPhone4S

    case iPhone5
    case iPhone5C
    case iPhone5S

    case iPhone6
    case iPhone6Plus

    case iPhone6S
    case iPhone6SPlus

    case iPhoneSE

    case iPhone7
    case iPhone7Plus

    case iPhone8
    case iPhone8Plus

    case iPhoneX

    case iPhoneXS
    case iPhoneXSMax
    case iPhoneXR

    case iPhone11
    case iPhone11Pro
    case iPhone11ProMax

    case iPhoneSEGen2

    case iPhone12Mini
    case iPhone12
    case iPhone12Pro
    case iPhone12ProMax

    case iPhone13Mini
    case iPhone13
    case iPhone13Pro
    case iPhone13ProMax

    case iPhoneSEGen3

    case iPhone14
    case iPhone14Plus
    case iPhone14Pro
    case iPhone14ProMax

    case iPodTouch1G
    case iPodTouch2G
    case iPodTouch3G
    case iPodTouch4G
    case iPodTouch5G
    case iPodTouch6G
    case iPodTouch7G

    case iPad
    case iPad2
    case iPad3
    case iPad4
    case iPad5
    case iPad6
    case iPad7
    case iPad8
    case iPad9
    case iPad10

    case iPadMini
    case iPadMiniRetina
    case iPadMini3
    case iPadMini4
    case iPadMini5
    case iPadMini6

    case iPadAir
    case iPadAir2
    case iPadAir3
    case iPadAir4
    case iPadAir5

    case iPadPro9p7Inch
    case iPadPro10p5Inch

    case iPadPro11Inch
    case iPadPro11Inch2
    case iPadPro11Inch3
    case iPadPro11Inch4

    case iPadPro12p9Inch
    case iPadPro12p9Inch2
    case iPadPro12p9Inch3
    case iPadPro12p9Inch4
    case iPadPro12p9Inch5
    case iPadPro12p9Inch6

    case simulator
    case notAvailable

    // MARK: Constants

    /// The current device type
    public static var current: DeviceType {

        var systemInfo = utsname()
        uname(&systemInfo)

        let machine = systemInfo.machine
        let mirror = Mirror(reflecting: machine)
        var identifier = ""

        for child in mirror.children {
            if let value = child.value as? Int8, value != 0 {
                identifier.append(String(UnicodeScalar(UInt8(value))))
            }
        }

        return DeviceType(identifier: identifier)
    }

    // MARK: Variables

    /// The display name of the device type
    public var displayName: String {

        switch self {
        case .iPhone2G: return "iPhone 2G"
        case .iPhone3G: return "iPhone 3G"
        case .iPhone3GS: return "iPhone 3GS"
        case .iPhone4: return "iPhone 4"
        case .iPhone4S: return "iPhone 4S"
        case .iPhone5: return "iPhone 5"
        case .iPhone5C: return "iPhone 5C"
        case .iPhone5S: return "iPhone 5S"
        case .iPhone6Plus: return "iPhone 6 Plus"
        case .iPhone6: return "iPhone 6"
        case .iPhone6S: return "iPhone 6S"
        case .iPhone6SPlus: return "iPhone 6S Plus"
        case .iPhoneSE: return "iPhone SE"
        case .iPhone7: return "iPhone 7"
        case .iPhone7Plus: return "iPhone 7 Plus"
        case .iPhone8: return "iPhone 8"
        case .iPhone8Plus: return "iPhone 8 Plus"
        case .iPhoneX: return "iPhone X"
        case .iPhoneXS: return "iPhone XS"
        case .iPhoneXSMax: return "iPhone XS Max"
        case .iPhoneXR: return "iPhone XR"
        case .iPhone11: return "iPhone 11"
        case .iPhone11Pro: return "iPhone 11 Pro"
        case .iPhone11ProMax: return "iPhone 11 Pro Max"
        case .iPhoneSEGen2: return "iPhone SE (2nd generation)"
        case .iPhone12Mini: return "iPhone 12 mini"
        case .iPhone12: return "iPhone 12"
        case .iPhone12Pro: return "iPhone 12 Pro"
        case .iPhone12ProMax: return "iPhone 12 Pro Max"
        case .iPhone13Mini: return "iPhone 13 mini"
        case .iPhone13: return "iPhone 13"
        case .iPhone13Pro: return "iPhone 13 Pro"
        case .iPhone13ProMax: return "iPhone 13 Pro Max"
        case .iPhoneSEGen3: return "iPhone SE (3rd generation)"
        case .iPhone14: return "iPhone 14"
        case .iPhone14Plus: return "iPhone 14 Plus"
        case .iPhone14Pro: return "iPhone 14 Pro"
        case .iPhone14ProMax: return "iPhone 14 Pro Max"

        case .iPodTouch1G: return "iPod Touch"
        case .iPodTouch2G: return "iPod Touch (2nd generation)"
        case .iPodTouch3G: return "iPod Touch (3rd generation)"
        case .iPodTouch4G: return "iPod Touch (4th generation)"
        case .iPodTouch5G: return "iPod Touch (5th generation)"
        case .iPodTouch6G: return "iPod Touch (6th generation)"
        case .iPodTouch7G: return "iPod Touch (7th generation)"

        case .iPad: return "iPad"
        case .iPad2: return "iPad 2"
        case .iPad3: return "iPad 3"
        case .iPad4: return "iPad 4"
        case .iPad5: return "iPad 5"
        case .iPad6: return "iPad 6"
        case .iPad7: return "iPad (7th generation)"
        case .iPad8: return "iPad (8th generation)"
        case .iPad9: return "iPad (9th generation)"
        case .iPad10: return "iPad (10th generation)"

        case .iPadMini: return "iPad Mini"
        case .iPadMiniRetina: return "iPad Mini Retina"
        case .iPadMini3: return "iPad Mini 3"
        case .iPadMini4: return "iPad Mini 4"
        case .iPadMini5: return "iPad Mini (5th generation)"
        case .iPadMini6: return "iPad Mini (6th generation)"

        case .iPadAir: return "iPad Air"
        case .iPadAir2: return "iPad Air 2"
        case .iPadAir3: return "iPad Air (3rd generation)"
        case .iPadAir4: return "iPad Air (4th generation)"
        case .iPadAir5: return "iPad Air (5th generation)"

        case .iPadPro9p7Inch: return "iPad Pro (9.7-inch)"
        case .iPadPro10p5Inch: return "iPad Pro (10.5-inch)"

        case .iPadPro11Inch: return "iPad Pro (11-inch)"
        case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
        case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
        case .iPadPro11Inch4: return "iPad Pro (11-inch) (4th generation)"

        case .iPadPro12p9Inch: return "iPad Pro (12.9-inch)"
        case .iPadPro12p9Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
        case .iPadPro12p9Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
        case .iPadPro12p9Inch4: return "iPad Pro (12.9-inch) (4th generation)"
        case .iPadPro12p9Inch5: return "iPad Pro (12.9-inch) (5th generation)"
        case .iPadPro12p9Inch6: return "iPad Pro (12.9-inch) (6th generation)"

        case .simulator: return "Simulator"
        case .notAvailable: return "Not Available"
        }
    }

    /// The identifiers associated with each device type
    internal var identifiers: [String] {

        switch self {
        case .notAvailable: return []
        case .simulator: return ["i386", "x86_64"]

        case .iPhone2G: return ["iPhone1,1"]
        case .iPhone3G: return ["iPhone1,2"]
        case .iPhone3GS: return ["iPhone2,1"]
        case .iPhone4: return ["iPhone3,1", "iPhone3,2", "iPhone3,3"]
        case .iPhone4S: return ["iPhone4,1"]
        case .iPhone5: return ["iPhone5,1", "iPhone5,2"]
        case .iPhone5C: return ["iPhone5,3", "iPhone5,4"]
        case .iPhone5S: return ["iPhone6,1", "iPhone6,2"]
        case .iPhone6: return ["iPhone7,2"]
        case .iPhone6Plus: return ["iPhone7,1"]
        case .iPhone6S: return ["iPhone8,1"]
        case .iPhone6SPlus: return ["iPhone8,2"]
        case .iPhoneSE: return ["iPhone8,4"]
        case .iPhone7: return ["iPhone9,1", "iPhone9,3"]
        case .iPhone7Plus: return ["iPhone9,2", "iPhone9,4"]
        case .iPhone8: return ["iPhone10,1", "iPhone10,4"]
        case .iPhone8Plus: return ["iPhone10,2", "iPhone10,5"]
        case .iPhoneX: return ["iPhone10,3", "iPhone10,6"]
        case .iPhoneXS: return ["iPhone11,2"]
        case .iPhoneXSMax: return ["iPhone11,4", "iPhone11,6"]
        case .iPhoneXR: return ["iPhone11,8"]
        case .iPhone11: return ["iPhone12,1"]
        case .iPhone11Pro: return ["iPhone12,3"]
        case .iPhone11ProMax: return ["iPhone12,5"]
        case .iPhoneSEGen2: return ["iPhone12,8"]
        case .iPhone12Mini: return ["iPhone13,1"]
        case .iPhone12: return ["iPhone13,2"]
        case .iPhone12Pro: return ["iPhone13,3"]
        case .iPhone12ProMax: return ["iPhone13,4"]
        case .iPhone13Mini: return ["iPhone14,4"]
        case .iPhone13: return ["iPhone14,5"]
        case .iPhone13Pro: return ["iPhone14,2"]
        case .iPhone13ProMax: return ["iPhone14,3"]
        case .iPhoneSEGen3: return ["iPhone14,6"]
        case .iPhone14: return ["iPhone14,7"]
        case .iPhone14Plus: return ["iPhone14,8"]
        case .iPhone14Pro: return ["iPhone15,2"]
        case .iPhone14ProMax: return ["iPhone15,3"]

        case .iPodTouch1G: return ["iPod1,1"]
        case .iPodTouch2G: return ["iPod2,1"]
        case .iPodTouch3G: return ["iPod3,1"]
        case .iPodTouch4G: return ["iPod4,1"]
        case .iPodTouch5G: return ["iPod5,1"]
        case .iPodTouch6G: return ["iPod7,1"]
        case .iPodTouch7G: return ["iPod9,1"]

        case .iPad: return ["iPad1,1", "iPad1,2"]
        case .iPad2: return ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"]
        case .iPad3: return ["iPad3,1", "iPad3,2", "iPad3,3"]
        case .iPad4: return ["iPad3,4", "iPad3,5", "iPad3,6"]
        case .iPad5: return ["iPad6,11", "iPad6,12"]
        case .iPad6: return ["iPad7,5", "iPad7,6"]
        case .iPad7: return ["iPad7,11", "iPad7,12"]
        case .iPad8: return ["iPad11,6", "iPad11,7"]
        case .iPad9: return ["iPad12,1", "iPad12,2"]
        case .iPad10: return ["iPad13,18", "iPad13,19"]

        case .iPadMini: return ["iPad2,5", "iPad2,6", "iPad2,7"]
        case .iPadMiniRetina: return ["iPad4,4", "iPad4,5", "iPad4,6"]
        case .iPadMini3: return ["iPad4,7", "iPad4,8", "iPad4,9"]
        case .iPadMini4: return ["iPad5,1", "iPad5,2"]
        case .iPadMini5: return ["iPad11,1", "iPad11,2"]
        case .iPadMini6: return ["iPad14,1", "iPad14,2"]

        case .iPadAir: return ["iPad4,1", "iPad4,2", "iPad4,3"]
        case .iPadAir2: return ["iPad5,3", "iPad5,4"]
        case .iPadAir3: return ["iPad11,3", "iPad11,4"]
        case .iPadAir4: return ["iPad13,1", "iPad13,2"]
        case .iPadAir5: return ["iPad13,16", "iPad13,17"]

        case .iPadPro9p7Inch: return ["iPad6,3", "iPad6,4"]
        case .iPadPro10p5Inch: return ["iPad7,3", "iPad7,4"]

        case .iPadPro11Inch: return ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"]
        case .iPadPro11Inch2: return ["iPad8,9", "iPad8,10"]
        case .iPadPro11Inch3: return ["iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7"]
        case .iPadPro11Inch4: return ["iPad14,3", "iPad14,4"]

        case .iPadPro12p9Inch: return ["iPad6,7", "iPad6,8"]
        case .iPadPro12p9Inch2: return ["iPad7,1", "iPad7,2"]
        case .iPadPro12p9Inch3: return ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"]
        case .iPadPro12p9Inch4: return ["iPad8,11", "iPad8,12"]
        case .iPadPro12p9Inch5: return ["iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11"]
        case .iPadPro12p9Inch6: return ["iPad14,5", "iPad14,6"]
        }
    }

    // MARK: Inits

    /// Creates a device type
    ///
    /// - Parameter identifier: The identifier of the device
    internal init(identifier: String) {

        for device in DeviceType.allCases {
            for deviceId in device.identifiers {
                guard identifier == deviceId else { continue }
                self = device
                return
            }
        }
        
        self = .notAvailable
    }
}

// MARK: -

public extension UIDevice {
    /// The `DeviceType` of the device in use
    var deviceType: DeviceType {
        return DeviceType.current
    }
}
