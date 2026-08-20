// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YYImage",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "YYImage", targets: ["YYImage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode.git", from: "1.5.0"),
    ],
    targets: [
        .target(
            name: "YYImage",
            dependencies: [
                .product(name: "libwebp", package: "libwebp-Xcode"),
            ],
            path: "YYImage",
            publicHeadersPath: ".",
            cSettings: [
                .define("YYIMAGE_WEBP_ENABLED", to: "1"),
            ],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AssetsLibrary"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices"),
            ]
        ),
    ]
)
