// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EngineCore",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "EngineCore",
            targets: ["EngineCoreSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .target(
            name: "EngineCore",
            dependencies: ["EngineUIKit", "EngineCoreSwift"]),
        
//        .binaryTarget(
//            name: "EngineUIKit", url: "https://github.com/shravangudikadi1/EngineUIKit/blob/main/EngineUIKit.xcframework.zip?raw=true", checksum: "b3c2aca2e60c01da4c0d82ff1151488acd6071d3db4fbb7fd7558a52590a"),
        .binaryTarget(
            name: "EngineCoreSwift", path: "EngineCoreSwift.xcframework"),
        .binaryTarget(
            name: "EngineUIKit", path: "EngineUIKit.xcframework"),

]
    
    
)
