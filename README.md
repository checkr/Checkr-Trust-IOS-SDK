# CheckrTrust (Binary SwiftPM Package)

- Xcode → **File → Add Package Dependencies…**
- paste this package's URL (https://github.com/checkr/Checkr-Trust-IOS-SDK)
- also add [ZipFoundation](https://github.com/weichsel/ZIPFoundation) as a dependency if your project doesn't already include it

## What this repo contains

- `Package.swift`: declares a `.binaryTarget` named `CheckrTrust`
- `LICENSE.md`: MIT
- `CHANGELOG.md`: release notes

## Notes

- This binary package is **iOS-only** because the XCFramework is built for iOS device + iOS simulator.
