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

    case iPhone15
    case iPhone15Plus
    case iPhone15Pro
    case iPhone15ProMax

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
    case iPadAir11InchM2
    case iPadAir13InchM2

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
    case iPadPro11InchM4
    case iPadPro13InchM4

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
        case .iPhone2G: "iPhone 2G"
        case .iPhone3G: "iPhone 3G"
        case .iPhone3GS: "iPhone 3GS"
        case .iPhone4: "iPhone 4"
        case .iPhone4S: "iPhone 4S"
        case .iPhone5: "iPhone 5"
        case .iPhone5C: "iPhone 5C"
        case .iPhone5S: "iPhone 5S"
        case .iPhone6Plus: "iPhone 6 Plus"
        case .iPhone6: "iPhone 6"
        case .iPhone6S: "iPhone 6S"
        case .iPhone6SPlus: "iPhone 6S Plus"
        case .iPhoneSE: "iPhone SE"
        case .iPhone7: "iPhone 7"
        case .iPhone7Plus: "iPhone 7 Plus"
        case .iPhone8: "iPhone 8"
        case .iPhone8Plus: "iPhone 8 Plus"
        case .iPhoneX: "iPhone X"
        case .iPhoneXS: "iPhone XS"
        case .iPhoneXSMax: "iPhone XS Max"
        case .iPhoneXR: "iPhone XR"
        case .iPhone11: "iPhone 11"
        case .iPhone11Pro: "iPhone 11 Pro"
        case .iPhone11ProMax: "iPhone 11 Pro Max"
        case .iPhoneSEGen2: "iPhone SE (2nd generation)"
        case .iPhone12Mini: "iPhone 12 mini"
        case .iPhone12: "iPhone 12"
        case .iPhone12Pro: "iPhone 12 Pro"
        case .iPhone12ProMax: "iPhone 12 Pro Max"
        case .iPhone13Mini: "iPhone 13 mini"
        case .iPhone13: "iPhone 13"
        case .iPhone13Pro: "iPhone 13 Pro"
        case .iPhone13ProMax: "iPhone 13 Pro Max"
        case .iPhoneSEGen3: "iPhone SE (3rd generation)"
        case .iPhone14: "iPhone 14"
        case .iPhone14Plus: "iPhone 14 Plus"
        case .iPhone14Pro: "iPhone 14 Pro"
        case .iPhone14ProMax: "iPhone 14 Pro Max"
        case .iPhone15: "iPhone 15"
        case .iPhone15Plus: "iPhone 15 Plus"
        case .iPhone15Pro: "iPhone 15 Pro"
        case .iPhone15ProMax: "iPhone 15 Pro Max"

        case .iPodTouch1G: "iPod Touch"
        case .iPodTouch2G: "iPod Touch (2nd generation)"
        case .iPodTouch3G: "iPod Touch (3rd generation)"
        case .iPodTouch4G: "iPod Touch (4th generation)"
        case .iPodTouch5G: "iPod Touch (5th generation)"
        case .iPodTouch6G: "iPod Touch (6th generation)"
        case .iPodTouch7G: "iPod Touch (7th generation)"

        case .iPad: "iPad"
        case .iPad2: "iPad 2"
        case .iPad3: "iPad 3"
        case .iPad4: "iPad 4"
        case .iPad5: "iPad 5"
        case .iPad6: "iPad 6"
        case .iPad7: "iPad (7th generation)"
        case .iPad8: "iPad (8th generation)"
        case .iPad9: "iPad (9th generation)"
        case .iPad10: "iPad (10th generation)"

        case .iPadMini: "iPad Mini"
        case .iPadMiniRetina: "iPad Mini Retina"
        case .iPadMini3: "iPad Mini 3"
        case .iPadMini4: "iPad Mini 4"
        case .iPadMini5: "iPad Mini (5th generation)"
        case .iPadMini6: "iPad Mini (6th generation)"

        case .iPadAir: "iPad Air"
        case .iPadAir2: "iPad Air 2"
        case .iPadAir3: "iPad Air (3rd generation)"
        case .iPadAir4: "iPad Air (4th generation)"
        case .iPadAir5: "iPad Air (5th generation)"
        case .iPadAir11InchM2: "iPad Air 11-inch (M2)"
        case .iPadAir13InchM2: "iPad Air 13-inch (M2)"

        case .iPadPro9p7Inch: "iPad Pro (9.7-inch)"
        case .iPadPro10p5Inch: "iPad Pro (10.5-inch)"

        case .iPadPro11Inch: "iPad Pro (11-inch)"
        case .iPadPro11Inch2: "iPad Pro (11-inch) (2nd generation)"
        case .iPadPro11Inch3: "iPad Pro (11-inch) (3rd generation)"
        case .iPadPro11Inch4: "iPad Pro (11-inch) (4th generation)"

        case .iPadPro12p9Inch: "iPad Pro (12.9-inch)"
        case .iPadPro12p9Inch2: "iPad Pro (12.9-inch) (2nd generation)"
        case .iPadPro12p9Inch3: "iPad Pro (12.9-inch) (3rd generation)"
        case .iPadPro12p9Inch4: "iPad Pro (12.9-inch) (4th generation)"
        case .iPadPro12p9Inch5: "iPad Pro (12.9-inch) (5th generation)"
        case .iPadPro12p9Inch6: "iPad Pro (12.9-inch) (6th generation)"
        case .iPadPro11InchM4: "iPad Pro 11-inch (M4)"
        case .iPadPro13InchM4: "iPad Pro 13-inch (M4)"

        case .simulator: "Simulator"
        case .notAvailable: "Not Available"
        }
    }

    /// The identifiers associated with each device type
    internal var identifiers: [String] {

        switch self {
        case .notAvailable: []
        case .simulator: ["i386", "x86_64", "arm64"]

        case .iPhone2G: ["iPhone1,1"]
        case .iPhone3G: ["iPhone1,2"]
        case .iPhone3GS: ["iPhone2,1"]
        case .iPhone4: ["iPhone3,1", "iPhone3,2", "iPhone3,3"]
        case .iPhone4S: ["iPhone4,1"]
        case .iPhone5: ["iPhone5,1", "iPhone5,2"]
        case .iPhone5C: ["iPhone5,3", "iPhone5,4"]
        case .iPhone5S: ["iPhone6,1", "iPhone6,2"]
        case .iPhone6: ["iPhone7,2"]
        case .iPhone6Plus: ["iPhone7,1"]
        case .iPhone6S: ["iPhone8,1"]
        case .iPhone6SPlus: ["iPhone8,2"]
        case .iPhoneSE: ["iPhone8,4"]
        case .iPhone7: ["iPhone9,1", "iPhone9,3"]
        case .iPhone7Plus: ["iPhone9,2", "iPhone9,4"]
        case .iPhone8: ["iPhone10,1", "iPhone10,4"]
        case .iPhone8Plus: ["iPhone10,2", "iPhone10,5"]
        case .iPhoneX: ["iPhone10,3", "iPhone10,6"]
        case .iPhoneXS: ["iPhone11,2"]
        case .iPhoneXSMax: ["iPhone11,4", "iPhone11,6"]
        case .iPhoneXR: ["iPhone11,8"]
        case .iPhone11: ["iPhone12,1"]
        case .iPhone11Pro: ["iPhone12,3"]
        case .iPhone11ProMax: ["iPhone12,5"]
        case .iPhoneSEGen2: ["iPhone12,8"]
        case .iPhone12Mini: ["iPhone13,1"]
        case .iPhone12: ["iPhone13,2"]
        case .iPhone12Pro: ["iPhone13,3"]
        case .iPhone12ProMax: ["iPhone13,4"]
        case .iPhone13Mini: ["iPhone14,4"]
        case .iPhone13: ["iPhone14,5"]
        case .iPhone13Pro: ["iPhone14,2"]
        case .iPhone13ProMax: ["iPhone14,3"]
        case .iPhoneSEGen3: ["iPhone14,6"]
        case .iPhone14: ["iPhone14,7"]
        case .iPhone14Plus: ["iPhone14,8"]
        case .iPhone14Pro: ["iPhone15,2"]
        case .iPhone14ProMax: ["iPhone15,3"]
        case .iPhone15: ["iPhone15,4"]
        case .iPhone15Plus: ["iPhone15,5"]
        case .iPhone15Pro: ["iPhone16,1"]
        case .iPhone15ProMax: ["iPhone16,2"]

        case .iPodTouch1G: ["iPod1,1"]
        case .iPodTouch2G: ["iPod2,1"]
        case .iPodTouch3G: ["iPod3,1"]
        case .iPodTouch4G: ["iPod4,1"]
        case .iPodTouch5G: ["iPod5,1"]
        case .iPodTouch6G: ["iPod7,1"]
        case .iPodTouch7G: ["iPod9,1"]

        case .iPad: ["iPad1,1", "iPad1,2"]
        case .iPad2: ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"]
        case .iPad3: ["iPad3,1", "iPad3,2", "iPad3,3"]
        case .iPad4: ["iPad3,4", "iPad3,5", "iPad3,6"]
        case .iPad5: ["iPad6,11", "iPad6,12"]
        case .iPad6: ["iPad7,5", "iPad7,6"]
        case .iPad7: ["iPad7,11", "iPad7,12"]
        case .iPad8: ["iPad11,6", "iPad11,7"]
        case .iPad9: ["iPad12,1", "iPad12,2"]
        case .iPad10: ["iPad13,18", "iPad13,19"]

        case .iPadMini: ["iPad2,5", "iPad2,6", "iPad2,7"]
        case .iPadMiniRetina: ["iPad4,4", "iPad4,5", "iPad4,6"]
        case .iPadMini3: ["iPad4,7", "iPad4,8", "iPad4,9"]
        case .iPadMini4: ["iPad5,1", "iPad5,2"]
        case .iPadMini5: ["iPad11,1", "iPad11,2"]
        case .iPadMini6: ["iPad14,1", "iPad14,2"]

        case .iPadAir: ["iPad4,1", "iPad4,2", "iPad4,3"]
        case .iPadAir2: ["iPad5,3", "iPad5,4"]
        case .iPadAir3: ["iPad11,3", "iPad11,4"]
        case .iPadAir4: ["iPad13,1", "iPad13,2"]
        case .iPadAir5: ["iPad13,16", "iPad13,17"]
        case .iPadAir11InchM2: ["iPad14,8", "iPad14,9"]
        case .iPadAir13InchM2: ["iPad14,10", "iPad14,11"]

        case .iPadPro9p7Inch: ["iPad6,3", "iPad6,4"]
        case .iPadPro10p5Inch: ["iPad7,3", "iPad7,4"]

        case .iPadPro11Inch: ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"]
        case .iPadPro11Inch2: ["iPad8,9", "iPad8,10"]
        case .iPadPro11Inch3: ["iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7"]
        case .iPadPro11Inch4: ["iPad14,3", "iPad14,4"]

        case .iPadPro12p9Inch: ["iPad6,7", "iPad6,8"]
        case .iPadPro12p9Inch2: ["iPad7,1", "iPad7,2"]
        case .iPadPro12p9Inch3: ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"]
        case .iPadPro12p9Inch4: ["iPad8,11", "iPad8,12"]
        case .iPadPro12p9Inch5: ["iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11"]
        case .iPadPro12p9Inch6: ["iPad14,5", "iPad14,6"]
        case .iPadPro11InchM4: ["iPad16,3", "iPad16,4"]
        case .iPadPro13InchM4: ["iPad16,5", "iPad16,6"]
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
        DeviceType.current
    }
}
