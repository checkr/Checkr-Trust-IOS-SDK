// swift-tools-version: 5.9
import PackageDescription

/// CheckrTrust (binary distribution via SwiftPM)
///
/// This package wraps `CheckrTrust.xcframework` as a SwiftPM `binaryTarget` so client teams can
/// use Xcode's "Add Package Dependencies..." experience without building from source.
///
/// Release process (high level):
/// - Upload `CheckrTrust.xcframework.zip` somewhere stable (e.g., a GitHub Release asset).
/// - Compute checksum: `swift package compute-checksum CheckrTrust.xcframework.zip`
/// - Update `url` + `checksum` below.
/// - Tag this repo (e.g., `1.0.0`) and tell clients to pin to that version.
let package = Package(
    name: "CheckrTrust",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "CheckrTrust",
            targets: ["CheckrTrust"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CheckrTrust",
            url: "https://dashboard.checkrtrust.com/sdk/dist/CheckrTrust.xcframework.zip",
            checksum: "459ab8e5892e77bddb19013a06192ecf57bb825ed1ce2f233f9d19b84ad1dfde"
        ),
    ]
)

