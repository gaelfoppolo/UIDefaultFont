//
//  NotificationName+Extension.swift
//  UIDefaultFont
//
//  Created by Gaël on 20/09/2017.
//

import Foundation

extension Notification.Name {

	/// Posted when the system normal font is changed.
    public static let normalFontChanged: Notification.Name = Notification.Name("normalFontChanged")
    /// Posted when the system bold font is changed.
    public static let boldFontChanged: Notification.Name = Notification.Name("boldFontChanged")
    /// Posted when the system italic font is changed.
    public static let italicFontChanged: Notification.Name = Notification.Name("italicFontChanged")

}
