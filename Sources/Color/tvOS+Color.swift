//
//  tvOS+Color.swift
//  Color
//

#if os(tvOS)

import UIKit

public enum Color {
	/// Used to override the traits that the underlying UIColor should be resolved with.
	/// In general, should not be modified
	public static let wantedTraits = UITraitCollection()
	
	private static func make(_ color: UIColor) -> UIColor {
		if #available(tvOS 13.0, *) {
			return self.make { color.resolvedColor(with: $0) }
		} else {
			return color
		}
	}
	
	@available(tvOS 13.0, *)
	public static func make(dynamicProvider: @escaping (UITraitCollection) -> UIColor) -> UIColor {
		return UIColor { traitCollection -> UIColor in
			let newTraits = UITraitCollection(traitsFrom: [traitCollection, Color.wantedTraits])
			return dynamicProvider(newTraits)
		}
	}
	
	public static var systemRed: UIColor {
		return make(.systemRed)
	}
	public static var systemGreen: UIColor {
		return make(.systemGreen)
	}
	public static var systemBlue: UIColor {
		return make(.systemBlue)
	}
	public static var systemOrange: UIColor {
		return make(.systemOrange)
	}
	public static var systemYellow: UIColor {
		return make(.systemYellow)
	}
	public static var systemPink: UIColor {
		return make(.systemPink)
	}
	public static var systemPurple: UIColor {
		if #available(iOS 9.0, *) {
			return make(.systemPurple)
		} else {
			return UIColor(red: 0.6862745098039216, green: 0.3215686274509804, blue: 0.8705882352941177, alpha: 1)
		}
	}
	public static var systemTeal: UIColor {
		return make(.systemTeal)
	}
	public static var systemIndigo: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.systemIndigo)
		} else {
			return UIColor(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098, alpha: 1)
		}
	}
	
	public static var systemGray: UIColor {
		return make(.systemGray)
	}
	
	public static var label: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.label)
		} else {
			return UIColor(white: 0, alpha: 1)
		}
	}
	public static var secondaryLabel: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.secondaryLabel)
		} else {
			return UIColor(white: 0.23705819249153137, alpha: 0.6)
		}
	}
	public static var tertiaryLabel: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.tertiaryLabel)
		} else {
			return UIColor(white: 0.23705819249153137, alpha: 0.3)
		}
	}
	public static var quaternaryLabel: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.quaternaryLabel)
		} else {
			return UIColor(white: 0.23705819249153137, alpha: 0.18)
		}
	}
	
	public static var link: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.link)
		} else {
			return UIColor(red: 0.0, green: 0.47843137254901963, blue: 1.0, alpha: 1)
		}
	}
	
	public static var placeholderText: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.placeholderText)
		} else {
			return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.3)
		}
	}
	
	public static var separator: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.separator)
		} else {
			return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.29)
		}
	}
	public static var opaqueSeparator: UIColor {
		if #available(tvOS 13.0, *) {
			return make(.opaqueSeparator)
		} else {
			return UIColor(red: 0.7764705882352941, green: 0.7764705882352941, blue: 0.7843137254901961, alpha: 1)
		}
	}
}

#endif
