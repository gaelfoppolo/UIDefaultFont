//
//  UIFont+Extension.swift
//  UIDefaultFont
//
//  Created by Gaël on 17/09/2017.
//  Copyright © 2017 Gaël Foppolo. All rights reserved.
//

import UIKit

extension UIFont {

    /**
    The normal font name of the system, used when not nil.
    If nil, the default system font is used instead.
    */
    open static var normalFontName: String? {
        didSet {
            UIFont.initialize
            NotificationCenter.default.post(name: .normalFontChanged, object: nil)
        }
    }

    /**
    The bold font name of the system, used when not nil.
    If nil, the default system font is used instead.
    */
    open static var boldFontName: String? {
        didSet {
            UIFont.initialize
            NotificationCenter.default.post(name: .boldFontChanged, object: nil)
        }
    }

    /**
    The italic font name of the system, used when not nil.
    If nil, the default system font is used instead.
    */
    open static var italicFontName: String? {
        didSet {
            UIFont.initialize
            NotificationCenter.default.post(name: .italicFontChanged, object: nil)
        }
    }

    private static let initialize: Void = {
        UIFont.myInitialize()
    }()

    @objc
    private class func mySystemFont(ofSize size: CGFloat) -> UIFont {
        if let name = UIFont.normalFontName, let font = UIFont(name: name, size: size) {
            return font
        } else {
             return mySystemFont(ofSize: size)
        }
    }

    @objc
    private class func myBoldSystemFont(ofSize size: CGFloat) -> UIFont {
        if let name = UIFont.boldFontName, let font = UIFont(name: name, size: size) {
            return font
        } else {
            return myBoldSystemFont(ofSize: size)
        }
    }

    @objc
    private class func myItalicSystemFont(ofSize size: CGFloat) -> UIFont {
        if let name = UIFont.italicFontName, let font = UIFont(name: name, size: size) {
            return font
        } else {
            return myItalicSystemFont(ofSize: size)
        }
    }

    @objc
    private convenience init(myCoder aDecoder: NSCoder) {

        // retrieve the descriptor and usage attribute
        if let fontDescriptor = aDecoder.decodeObject(forKey: "UIFontDescriptor") as? UIFontDescriptor,
            let fontAttribute = fontDescriptor.fontAttributes["NSCTFontUIUsageAttribute"] as? String {

            var fontName: String!

            switch fontAttribute {
                case "CTFontEmphasizedUsage", "CTFontBoldUsage":
                    fontName = UIFont.boldFontName ?? UIFont.myBoldSystemFont(ofSize: fontDescriptor.pointSize).fontName
                case "CTFontObliqueUsage":
                    fontName = UIFont.italicFontName ?? UIFont.myItalicSystemFont(ofSize: fontDescriptor.pointSize).fontName
                case "CTFontRegularUsage":
                fallthrough
                default:
                    fontName = UIFont.normalFontName ?? UIFont.mySystemFont(ofSize: fontDescriptor.pointSize).fontName
                    break
            }

            // instanciate
            self.init(name: fontName,
                      size: fontDescriptor.pointSize)!

        } else {
            // not the system font, then no override
            self.init(myCoder: aDecoder)
        }
    }

    private class func myInitialize() {

        if self == UIFont.self {

            let systemFontMethod = class_getClassMethod(self, #selector(systemFont(ofSize:)))
            let mySystemFontMethod = class_getClassMethod(self, #selector(mySystemFont(ofSize:)))
            method_exchangeImplementations(systemFontMethod, mySystemFontMethod)

            let boldSystemFontMethod = class_getClassMethod(self, #selector(boldSystemFont(ofSize:)))
            let myBoldSystemFontMethod = class_getClassMethod(self, #selector(myBoldSystemFont(ofSize:)))
            method_exchangeImplementations(boldSystemFontMethod, myBoldSystemFontMethod)

            let italicSystemFontMethod = class_getClassMethod(self, #selector(italicSystemFont(ofSize:)))
            let myItalicSystemFontMethod = class_getClassMethod(self, #selector(myItalicSystemFont(ofSize:)))
            method_exchangeImplementations(italicSystemFontMethod, myItalicSystemFontMethod)

            // Trick to get over the lack of UIFont.init(coder:))
            let initCoderMethod = class_getInstanceMethod(self, #selector(UIFontDescriptor.init(coder:)))
            let myInitCoderMethod = class_getInstanceMethod(self, #selector(UIFont.init(myCoder:)))
            method_exchangeImplementations(initCoderMethod, myInitCoderMethod)
        }
    }
}
