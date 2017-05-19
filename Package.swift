// swift-tools-version:3.1

import Foundation
import PackageDescription

// HACK from https://github.com/ReactiveCocoa/ReactiveSwift/blob/master/Package.swift
var isSwiftPMTest: Bool {
    return ProcessInfo.processInfo.environment["SWIFTPM_TEST_Algebra"] == "YES"
}

let package = Package(
    name: "Algebra",
    dependencies: [
        .Package(url: "https://github.com/typelift/Operadics.git",
                 majorVersion: 0)
    ] + (isSwiftPMTest ?
      [.Package(url: "https://github.com/typelift/SwiftCheck.git", versions: Version(0,6,0)..<Version(1,0,0))] :
      [])
)
