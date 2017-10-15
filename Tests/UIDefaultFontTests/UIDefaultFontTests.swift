//
//  UIDefaultFontTests.swift
//  UIDefaultFont
//
//  Created by Gaël Foppolo on 15/10/2017.
//  Copyright © 2017 UIDefaultFont. All rights reserved.
//

import Foundation
import XCTest
import UIDefaultFont

class UIDefaultFontTests: XCTestCase {
    
    func testNormalFont() {
        
        let fontName: String = "Georgia"
        UIFont.normalFontName = fontName
        
        XCTAssertTrue(UIFont.systemFont(ofSize: UIFont.systemFontSize).fontName == fontName, "\(fontName) font is not the default system font")
        
    }
    
    func testBoldFont() {
        
        let fontName: String = "Georgia-Bold"
        UIFont.boldFontName = fontName
        
        XCTAssertTrue(UIFont.boldSystemFont(ofSize: UIFont.systemFontSize).fontName == fontName, "\(fontName) font is not the default bold system font")
        
    }
    
    func testItalicFont() {
        
        let fontName: String = "Georgia-Italic"
        UIFont.boldFontName = fontName
        
        XCTAssertTrue(UIFont.boldSystemFont(ofSize: UIFont.systemFontSize).fontName == fontName, "\(fontName) font is not the default italic system font")
        
    }
    
    static var allTests = [
        ("testNormalFont", testNormalFont),
        ("testBoldFont", testBoldFont),
        ("testItalicFont", testItalicFont),
    ]
}
