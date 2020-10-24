//
//  iOS+Color.swift
//  Color
//

#if os(iOS)

import UIKit

public enum Color {
	/// Used to override the traits that the underlying UIColor should be resolved with.
	/// In general, should not be modified
	@available(iOS 8.0, *)
	public static var wantedTraits = UITraitCollection()
	
	private static func make(_ color: UIColor) -> UIColor {
		if #available(iOS 13.0, *) {
			return self.make { color.resolvedColor(with: $0) }
		} else {
			return color
		}
	}
	
	@available(iOS 13.0, *)
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
		if #available(iOS 13.0, *) {
			return make(.systemIndigo)
		} else {
			return UIColor(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098, alpha: 1)
		}
	}
	
	public static var systemGray: UIColor {
		return make(.systemGray)
	}

	public static var systemGray2: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemGray2)
		} else {
			return UIColor(red: 0.6823529411764706, green: 0.6823529411764706, blue: 0.6980392156862745, alpha: 1)
		}
	}
	public static var systemGray3: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemGray3)
		} else {
			return UIColor(red: 0.7803921568627451, green: 0.7803921568627451, blue: 0.8, alpha: 1)
		}
	}
	public static var systemGray4: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemGray4)
		} else {
			return UIColor(red: 0.8196078431372549, green: 0.8196078431372549, blue: 0.8392156862745098, alpha: 1)
		}
	}
	public static var systemGray5: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemGray5)
		} else {
			return UIColor(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.9176470588235294, alpha: 1)
		}
	}
	public static var systemGray6: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemGray6)
		} else {
			return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1)
		}
	}
	
	public static var label: UIColor {
		if #available(iOS 13.0, *) {
			return make(.label)
		} else {
			return UIColor(white: 0, alpha: 1)
		}
	}
	public static var secondaryLabel: UIColor {
		if #available(iOS 13.0, *) {
			return make(.secondaryLabel)
		} else {
			return UIColor(white: 0.23705819249153137, alpha: 0.6)
		}
	}
	public static var tertiaryLabel: UIColor {
		if #available(iOS 13.0, *) {
			return make(.tertiaryLabel)
		} else {
			return UIColor(white: 0.23705819249153137, alpha: 0.3)
		}
	}
	public static var quaternaryLabel: UIColor {
		if #available(iOS 13.0, *) {
			return make(.quaternaryLabel)
		} else {
			return UIColor(white: 0.23705819249153137, alpha: 0.18)
		}
	}
	
	public static var link: UIColor {
		if #available(iOS 13.0, *) {
			return make(.link)
		} else {
			return UIColor(red: 0.0, green: 0.47843137254901963, blue: 1.0, alpha: 1)
		}
	}
	
	public static var placeholderText: UIColor {
		if #available(iOS 13.0, *) {
			return make(.placeholderText)
		} else {
			return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.3)
		}
	}
	
	public static var separator: UIColor {
		if #available(iOS 13.0, *) {
			return make(.separator)
		} else {
			return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.29)
		}
	}
	public static var opaqueSeparator: UIColor {
		if #available(iOS 13.0, *) {
			return make(.opaqueSeparator)
		} else {
			return UIColor(red: 0.7764705882352941, green: 0.7764705882352941, blue: 0.7843137254901961, alpha: 1)
		}
	}
	
	public static var systemBackground: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemBackground)
		} else {
			return UIColor(white: 1.0, alpha: 1)
		}
	}
	public static var secondarySystemBackground: UIColor {
		if #available(iOS 13.0, *) {
			return make(.secondarySystemBackground)
		} else {
			return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1)
		}
	}
	public static var tertiarySystemBackground: UIColor {
		if #available(iOS 13.0, *) {
			return make(.tertiarySystemBackground)
		} else {
			return UIColor(white: 1.0, alpha: 1)
		}
	}
	
	public static var systemGroupedBackground: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemGroupedBackground)
		} else {
			return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1)
		}
	}
	public static var secondarySystemGroupedBackground: UIColor {
		if #available(iOS 13.0, *) {
			return make(.secondarySystemGroupedBackground)
		} else {
			return UIColor(white: 1.0, alpha: 1)
		}
	}
	public static var tertiarySystemGroupedBackground: UIColor {
		if #available(iOS 13.0, *) {
			return make(.tertiarySystemGroupedBackground)
		} else {
			return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1)
		}
	}
	
	public static var systemFill: UIColor {
		if #available(iOS 13.0, *) {
			return make(.systemFill)
		} else {
			return UIColor(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.2)
		}
	}
	public static var secondarySystemFill: UIColor {
		if #available(iOS 13.0, *) {
			return make(.secondarySystemFill)
		} else {
			return UIColor(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.16)
		}
	}
	public static var tertiarySystemFill: UIColor {
		if #available(iOS 13.0, *) {
			return make(.tertiarySystemFill)
		} else {
			return UIColor(red: 0.4627450980392157, green: 0.4627450980392157, blue: 0.5019607843137255, alpha: 0.12)
		}
	}
	public static var quaternarySystemFill: UIColor {
		if #available(iOS 13.0, *) {
			return make(.quaternarySystemFill)
		} else {
			return UIColor(red: 0.4549019607843137, green: 0.4549019607843137, blue: 0.5019607843137255, alpha: 0.08)
		}
	}
	
	public static var lightText: UIColor {
		return make(.lightText)
	}
	public static var darkText: UIColor {
		return make(.darkText)
	}
}

#endif
