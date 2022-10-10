//
//  Fonts.swift
//  banking
//
//  Created by René Piñeiro on 9/10/22.
//

import Foundation
import SwiftUI

extension Font {
    static let label = Font.custom(BankUIFont.boldFontName, size: 14)
    
    enum Button {
        static let largest = Font.custom(BankUIFont.boldFontName, size: 20)
        static let larger = Font.custom(BankUIFont.boldFontName, size: 18)
        static let normal = Font.custom(BankUIFont.boldFontName, size: 16)
        static let smaller = Font.custom(BankUIFont.boldFontName, size: 14)
        static let smallest = Font.custom(BankUIFont.boldFontName, size: 12)
    }
    
    enum Title {
        static let h1 = BankUIFont.boldTitleFontWithSize(.h1)
        static let h2 = BankUIFont.boldTitleFontWithSize(.h2)
        static let h3 = BankUIFont.boldTitleFontWithSize(.h3)
        static let h4 = BankUIFont.boldTitleFontWithSize(.h4)
        static let h5 = BankUIFont.boldTitleFontWithSize(.h5)
        static let h6 = BankUIFont.boldTitleFontWithSize(.h6)
    }
    
    enum Paragraph {
        static let largest = BankUIFont.paragraphFontWithSize(.largest)
        static let larger = BankUIFont.paragraphFontWithSize(.larger)
        static let normal = BankUIFont.paragraphFontWithSize(.normal)
        static let smaller = BankUIFont.paragraphFontWithSize(.smaller)
        static let smallest = BankUIFont.paragraphFontWithSize(.smallest)
    }
}

public enum UIFontWeight: Int {
    case regular
    case bold
}

public class BankUIFont: NSObject {
    public static let regularFontName = "MarkPro"
    public static let boldFontName = "MarkPro-Bold"
    
    public static func uiFontWithSize(_ size: FontSize, andWeight weight: UIFontWeight = .regular) -> UIFont {
        let fontName = (weight == .regular) ? BankUIFont.regularFontName : BankUIFont.boldFontName
        guard let uiFont = UIFont(name: fontName, size: size.value) else {
            return UIFont.systemFont(ofSize: size.value)
        }
        return uiFont
    }
    
    private static func uiFontWithRawSize(_ rawSize: CGFloat, andWeight weight: UIFontWeight = .regular) -> UIFont {
        let fontName = (weight == .regular) ? BankUIFont.regularFontName : BankUIFont.boldFontName
        guard let blcUIFont = UIFont(name: fontName, size: rawSize) else {
            return UIFont.systemFont(ofSize: rawSize)
        }
        return blcUIFont
    }

    public static func fontWithSize(_ size: FontSize, andWeight weight: UIFontWeight = .regular) -> Font {
        return Font(BankUIFont.uiFontWithSize(size, andWeight: weight))
    }

    public static func titleFontWithSize(_ size: FontSize.Title, andWeight weight: UIFontWeight = .regular) -> Font {
        return Font(BankUIFont.uiFontWithRawSize(size.rawValue, andWeight: weight))
    }

    public static func boldTitleFontWithSize(_ size: FontSize.Title) -> Font {
        return Font(BankUIFont.uiFontWithRawSize(size.rawValue, andWeight: .bold))
    }

    public static func paragraphFontWithSize(_ size: FontSize.Paragraph, andWeight weight: UIFontWeight = .regular) -> Font {
        return Font(BankUIFont.uiFontWithRawSize(size.rawValue, andWeight: weight))
    }

    public static func boldParagraphFontWithSize(_ size: FontSize.Paragraph) -> Font {
        return Font(BankUIFont.uiFontWithRawSize(size.rawValue, andWeight: .bold))
    }

    public static func buttonFontWithSize(_ size: FontSize.Button, andWeight weight: UIFontWeight = .regular) -> Font {
        return Font(BankUIFont.uiFontWithRawSize(size.rawValue, andWeight: weight))
    }

    public static func boldButtonFontWithSize(_ size: FontSize.Button) -> Font {
        return Font(BankUIFont.uiFontWithRawSize(size.rawValue, andWeight: .bold))
    }
}

public class FontSize {

    private(set) var value = CGFloat(0)

    init(_ size: FontSize.Title) {
        value = size.rawValue
    }

    init(_ size: FontSize.Paragraph) {
        value = size.rawValue
    }

    init(_ size: FontSize.Button) {
        value = size.rawValue
    }

    public enum Paragraph: Int, RawRepresentable {
        public typealias RawValue = CGFloat

        case largest
        case larger
        case normal
        case smaller
        case smallest

        public init?(rawValue: RawValue) {
            return nil
        }

        public var rawValue: RawValue {
            switch self {
            case .largest: return CGFloat(16)
            case .larger: return CGFloat(15)
            case .normal: return CGFloat(14)
            case .smaller: return CGFloat(13)
            case .smallest: return CGFloat(12)
            }
        }
    }
    
    public enum Title: Int, RawRepresentable {
        public typealias RawValue = CGFloat

        case h1
        case h2
        case h3
        case h4
        case h5
        case h6

        public init?(rawValue: RawValue) {
            return nil
        }

        public var rawValue: RawValue {
            switch self {
            case .h1: return CGFloat(40)
            case .h2: return CGFloat(32)
            case .h3: return CGFloat(24)
            case .h4: return CGFloat(20)
            case .h5: return CGFloat(16)
            case .h6: return CGFloat(14)
            }
        }
    }

    public enum Button: Int, RawRepresentable {
        public typealias RawValue = CGFloat

        case largest
        case larger
        case normal
        case smaller
        case smallest

        public init?(rawValue: RawValue) {
            return nil
        }

        public var rawValue: RawValue {
            switch self {
            case .largest: return CGFloat(23)
            case .larger: return CGFloat(20)
            case .normal: return CGFloat(18)
            case .smaller: return CGFloat(14)
            case .smallest: return CGFloat(13)
            }
        }
    }
}
