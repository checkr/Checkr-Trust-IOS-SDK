# CheckrTrust (Binary SwiftPM Package)

This folder is a **template for a separate Git repo** that distributes `CheckrTrust` as a **Swift Package Manager binary target**.

Client teams get the best UX:

- Xcode → **File → Add Package Dependencies…**
- paste your binary package repo URL
- select a version (SemVer tag)

## What this repo contains

- `Package.swift`: declares a `.binaryTarget` named `CheckrTrust`
- `LICENSE.md`: MIT
- `CHANGELOG.md`: release notes

## How to publish `1.0.0`

1. Build the XCFramework from the _source_ repo:

```bash
./scripts/build_xcframework.sh
```

2. Create a zip where `CheckrTrust.xcframework` is at the root of the archive:

```bash
cd dist
zip -r CheckrTrust.xcframework.zip CheckrTrust.xcframework
```

3. Compute checksum:

```bash
swift package compute-checksum dist/CheckrTrust.xcframework.zip
```

4. Upload `CheckrTrust.xcframework.zip` to a stable URL (GitHub Release asset is common).

5. Update `Package.swift` in this binary repo:

- set `url:` to the hosted zip URL
- set `checksum:` to the computed checksum

6. Tag this binary repo as `1.0.0` and publish.

## Notes

- This binary package is **iOS-only** because the XCFramework is built for iOS device + iOS simulator.
- If you later need macOS support, you’ll need to produce and ship a macOS XCFramework slice as well.
