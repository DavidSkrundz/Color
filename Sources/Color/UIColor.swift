//
//  UIColor.swift
//  Color
//

#if canImport(UIKit) && !os(watchOS)

import UIKit

extension UIColor {
	public func image(width: CGFloat, height: CGFloat) -> UIImage {
		if #available(iOS 13.0, tvOS 13.0, *) {
			let asset = ColorImageAsset(color: self, width: width, height: height)
			return asset.image(with: .current)
		} else {
			return UIImage.imageWithColor(color: self, width: width, height: height)
		}
	}
}

#endif
