// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "Color",
	platforms: [
		.macOS("10.9"),
		.iOS("7.0"),
		.tvOS("9.0"),
		.watchOS("2.0"),
	],
	products: [
		.library(
			name: "Color",
			targets: ["Color"]),
	],
	targets: [
		.target(
			name: "Color",
			dependencies: []),
	]
)
