//
//  UIImage.swift
//  Color
//

#if canImport(UIKit) && !os(watchOS)

import UIKit

extension UIImage {
	class func imageWithColor(color: UIColor, width: CGFloat, height: CGFloat) -> UIImage {
		let rect = CGRect(x: 0.0, y: 0.0, width: width, height: height)
		UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
		defer { UIGraphicsEndImageContext() }
		color.setFill()
		UIRectFill(rect)
		return UIGraphicsGetImageFromCurrentImageContext()!
	}
}

#endif
