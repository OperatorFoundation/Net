// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
#if (os(macOS) || os(iOS) || os(watchOS) || os(tvOS))
let package = Package(
    name: "Net",
    platforms: [
        .macOS(.v13),
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Net",
            targets: ["Net"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/OperatorFoundation/Datable", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Net",
            dependencies: [
                "Datable",
            ]
        ),
        .testTarget(
            name: "NetTests",
            dependencies: ["Net"]),
    ],
    swiftLanguageVersions: [.v5]
)
#else
let package = Package(
    name: "Net",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Net",
            targets: ["Net"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/OperatorFoundation/Datable", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/NetworkLinux.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Net",
            dependencies: ["Datable", "NetworkLinux"]),
        .testTarget(
            name: "NetTests",
            dependencies: ["Net", "NetworkLinux"]),
    ],
    swiftLanguageVersions: [.v5]
)
#endif
