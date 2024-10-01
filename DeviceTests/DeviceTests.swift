//
//  DeviceTests.swift
//  DeviceTests
//
//  Created by Johannes Schickling on 7/20/15.
//
//

import XCTest
@testable import Device

private extension DeviceType {

    /// The test identifers to test against
    var testIdentifiers: [String] {

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

        case .iPhone16: ["iPhone17,3"]
        case .iPhone16Plus: ["iPhone17,4"]
        case .iPhone16Pro: ["iPhone17,1"]
        case .iPhone16ProMax: ["iPhone17,2"]

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
        case .iPadMini: ["iPad2,5", "iPad2,6", "iPad2,7"]
        case .iPadMiniRetina: ["iPad4,4", "iPad4,5", "iPad4,6"]
        case .iPadMini3: ["iPad4,7", "iPad4,8", "iPad4,9"]
        case .iPadMini4: ["iPad5,1", "iPad5,2"]
        case .iPadMini5: ["iPad11,1", "iPad11,2"]
        case .iPadAir: ["iPad4,1", "iPad4,2", "iPad4,3"]
        case .iPadAir2: ["iPad5,3", "iPad5,4"]
        case .iPadAir3: ["iPad11,3", "iPad11,4"]
        case .iPadAir4: ["iPad13,1", "iPad13,2"]
        case .iPadPro9p7Inch: ["iPad6,3", "iPad6,4"]
        case .iPadPro10p5Inch: ["iPad7,3", "iPad7,4"]
        case .iPadPro11Inch: ["iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4"]
        case .iPadPro11Inch2: ["iPad8,9", "iPad8,10"]
        case .iPadPro12p9Inch: ["iPad6,7", "iPad6,8"]
        case .iPadPro12p9Inch2: ["iPad7,1", "iPad7,2"]
        case .iPadPro12p9Inch3: ["iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8"]
        case .iPadPro12p9Inch4: ["iPad8,11", "iPad8,12"]

        case .iPad9: ["iPad12,1", "iPad12,2"]
        case .iPad10: ["iPad13,18", "iPad13,19"]
        case .iPadMini6: ["iPad14,1", "iPad14,2"]
        case .iPadAir5: ["iPad13,16", "iPad13,17"]
        case .iPadPro11Inch3: ["iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7"]
        case .iPadPro11Inch4: ["iPad14,3", "iPad14,4"]
        case .iPadPro12p9Inch5: ["iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11"]
        case .iPadPro12p9Inch6: ["iPad14,5", "iPad14,6"]

        case .iPadPro11InchM4: ["iPad16,3", "iPad16,4"]
        case .iPadPro13InchM4: ["iPad16,5", "iPad16,6"]
        case .iPadAir11InchM2: ["iPad14,8", "iPad14,9"]
        case .iPadAir13InchM2: ["iPad14,10", "iPad14,11"]
        }
    }
}

class DeviceTests: XCTestCase {

    let simulatorTypes: [String] = ["i386", "x86_64", "arm64"]

    let iPhoneTypes: [String] = {
        ["iPhone1,1", "iPhone1,2", "iPhone2,1", "iPhone3,1", "iPhone3,1", "iPhone3,2",
                "iPhone3,3", "iPhone4,1", "iPhone5,1", "iPhone5,2", "iPhone5,3", "iPhone5,4",
                "iPhone6,1", "iPhone6,2", "iPhone7,1", "iPhone7,2", "iPhone8,2", "iPhone8,1",
                "iPhone8,4", "iPhone10,1", "iPhone10,4", "iPhone10,2", "iPhone10,5", "iPhone10,3",
                "iPhone10,6", "iPhone11,2", "iPhone11,4", "iPhone11,6", "iPhone11,8", "iPhone12,1",
                "iPhone12,3", "iPhone12,5", "iPhone12,8", "iPhone13,1", "iPhone13,2", "iPhone13,3",
                "iPhone13,4", "iPhone14,4", "iPhone14,5", "iPhone14,2", "iPhone14,3", "iPhone14,6",
                "iPhone14,7", "iPhone14,8", "iPhone15,2", "iPhone15,3", "iPhone15,4", "iPhone15,5",
                "iPhone16,1", "iPhone16,2", "iPhone17,1", "iPhone17,2", "iPhone17,3", "iPhone17,4"]
    }()

    let iPodTypes: [String] = {
        ["iPod1,1", "iPod2,1", "iPod3,1", "iPod4,1", "iPod5,1", "iPod7,1"]
    }()

    var iPadTypes: [String] {
        ["iPad1,1", "iPad1,2", "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4", "iPad2,5",
                "iPad2,6", "iPad2,7", "iPad3,1", "iPad3,2", "iPad3,3", "iPad3,4", "iPad3,5",
                "iPad3,6", "iPad4,1", "iPad4,2", "iPad4,3", "iPad4,4", "iPad4,5", "iPad4,6",
                "iPad4,7", "iPad4,8", "iPad5,1", "iPad5,2", "iPad5,3", "iPad5,4", "iPad6,3",
                "iPad6,4", "iPad6,7", "iPad6,8", "iPad7,1", "iPad7,2", "iPad7,3", "iPad7,4",
                "iPad6,11", "iPad6,12", "iPad7,5", "iPad7,6", "iPad8,1", "iPad8,2", "iPad8,3", 
                "iPad8,4", "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8", "iPad8,11", "iPad8,12",
                "iPad12,1", "iPad12,2", "iPad13,18", "iPad13,19", "iPad14,1", "iPad14,2",
                "iPad13,16", "iPad13,17", "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7",
                "iPad14,3", "iPad14,4", "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11",
                "iPad14,5", "iPad14,6", "iPad16,3", "iPad16,4", "iPad16,5", "iPad16,6",
                "iPad14,8", "iPad14,9", "iPad14,10", "iPad14,11"]
    }

    func testCurrentDevice() {
        XCTAssertNotEqual(DeviceType.current, DeviceType.notAvailable)
        XCTAssertNotEqual(UIDevice.current.deviceType, DeviceType.notAvailable)
    }

    func testSimulatorTypes() {
        for type in simulatorTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertEqual(deviceType, DeviceType.simulator)
        }
    }

    func testiPhoneTypes() {
        for type in iPhoneTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertNotEqual(deviceType, DeviceType.notAvailable)
        }
    }

    func testiPodTypes() {
        for type in iPodTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertNotEqual(deviceType, DeviceType.notAvailable)
        }
    }

    func testiPadTypes() {
        for type in iPadTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertNotEqual(deviceType, DeviceType.notAvailable)
        }
    }

    func testEmptyDevice() {
        let emptyDevice = DeviceType(identifier: "")
        XCTAssertEqual(emptyDevice, DeviceType.notAvailable)
    }

    func testDeviceTypeAllCases() {
        XCTAssertEqual(DeviceType.allCases.count, 92)

        for type in DeviceType.allCases {
            XCTAssertFalse(type.displayName.isEmpty)
            XCTAssertEqual(type.identifiers, type.testIdentifiers)
        }
    }
}
