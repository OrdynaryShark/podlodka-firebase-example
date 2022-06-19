// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let frameworks = [
    "FirebaseAnalytics",
    "FirebaseAnalyticsSwift",
    "FirebaseCore",
    "FirebaseCoreDiagnostics",
    "FirebaseCoreInternal",
    "FirebaseInstallations",
    "GoogleAppMeasurement",
    "GoogleAppMeasurementIdentitySupport",
    "GoogleDataTransport",
    "GoogleUtilities",
    "nanopb",
    "PromisesObjC",
]

let package = Package(
    name: "FirebaseAnalitycsLight",
    products: [
        .library(
            name: "FirebaseAnalitycsLight",
            targets: frameworks
        ),
    ],
    dependencies: [],
    targets: frameworks.map { frameworkName in
        .binaryTarget(name: frameworkName, path: "Frameworks/\(frameworkName).xcframework")
    }
)
