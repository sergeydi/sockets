// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Socks",
    products: [
        .library(
              name: "Socks",
              targets: ["Socks"])
      ],
    targets: [
    	.target(name: "SocksCore", path: "Sources/SocksCore"),
    	.target(name: "Socks", dependencies: ["SocksCore"], path: "Sources/Socks")
    ]
)
