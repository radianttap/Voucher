// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "Voucher",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12)
	],
	products: [
		// Products define the executables and libraries a package produces, and make them visible to other packages.
		.library(
			name: "VoucherSwift",
			targets: ["VoucherObjC", "VoucherSwift"])
	],
	dependencies: [],
	targets: [
		.target(
			name: "VoucherObjC",
			path: "ObjC"
		),
		.target(
			name: "VoucherSwift",
			dependencies: ["VoucherObjC"],
			path: "Swift"
		),
	]
)
