# Device.swift

[![Platform][platform-image]][cocoapod-url]

Super-lightweight library to detect used device

`Device.swift` extends the `UIDevice` class by adding a property:

```swift
var deviceType: DeviceType
```

## Install

### Swift Package Manager 

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/splitwise/device.swift", from: "1.2.3")
]
```

## Usage

```swift
import Device

let deviceType = UIDevice.current.deviceType

switch deviceType {
  case .iPhone6SPlus: print("Do stuff for iPhone6S Plus")
  case .iPadMini: print("Do stuff for iPad mini")
  default: print("Check other available cases of DeviceType")
}
```

[platform-image]: https://img.shields.io/cocoapods/p/Device.swift.svg
