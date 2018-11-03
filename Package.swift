// swift-tools-version:4.0

import Foundation
import PackageDescription

// HACK from https://github.com/ReactiveCocoa/ReactiveSwift/blob/master/Package.swift
var isSwiftPMTest: Bool {
    return ProcessInfo.processInfo.environment["SWIFTPM_TEST_Algebra"] == "YES"
}

let package = Package(
    name: "Algebra",
    dependencies: [
        .package(url: "https://github.com/typelift/Operadics.git", from: "0.0.0"),
        .package(url: "https://github.com/typelift/SwiftCheck.git", "0.6.0"..<"1.0.0")
    ],
    targets: [
        .target(
            name: "Algebra",
            dependencies: ["Operadics"]),
        .testTarget(
            name: "AlgebraTests",
            dependencies: ["Algebra", "SwiftCheck"])
    ]
)
