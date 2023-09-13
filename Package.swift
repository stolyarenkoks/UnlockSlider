// swift-tools-version:5.0
//
//  Package.swift
//

import PackageDescription

let package = Package(name: "UnlockSlider",
                      platforms: [
                        .iOS(.v10)
                      ],
                      products: [
                        .library(name: "UnlockSlider",
                                 targets: ["UnlockSlider"])
                      ],
                      targets: [
                        .target(name: "UnlockSlider",
                                path: "Source")
                      ],
                      swiftLanguageVersions: [
                        .v5
                      ])
