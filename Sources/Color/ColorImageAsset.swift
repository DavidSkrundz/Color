//
//  ColorImageAsset.swift
//  Color
//

#if canImport(UIKit) && !os(watchOS)

import UIKit

@available(iOS 13.0, tvOS 13.0, *)
open class ColorImageAsset: UIImageAsset {
	open var color: UIColor
	
	open var width: CGFloat
	open var height: CGFloat
	
	public init(color: UIColor, width: CGFloat, height: CGFloat) {
		self.color = color
		self.width = width
		self.height = height
		super.init()
	}
	
	required public init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override open func image(with configuration: UIImage.Configuration) -> UIImage {
		let traitCollection = configuration.traitCollection ?? UITraitCollection()
		return self.image(with: traitCollection)
	}
	
	override open func image(with traitCollection: UITraitCollection) -> UIImage {
		let color = self.color.resolvedColor(with: traitCollection)
		let image = UIImage.imageWithColor(color: color, width: self.width, height: self.height)
		image.setValue(self, forKey: "imageAsset")
		return image
	}
}

#endif
