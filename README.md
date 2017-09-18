# UIDefaultFont

[![CI Status](http://img.shields.io/travis/gaelfoppolo/UIDefaultFont.svg?style=flat)](https://travis-ci.org/gaelfoppolo/UIDefaultFont)
![Swift 3.1](https://img.shields.io/badge/Swift-3.2-orange.svg)
[![Version](https://img.shields.io/cocoapods/v/UIDefaultFont.svg?style=flat)](http://cocoapods.org/pods/UIDefaultFont)
[![License](https://img.shields.io/cocoapods/l/UIDefaultFont.svg?style=flat)](http://cocoapods.org/pods/UIDefaultFont)
[![Platform](https://img.shields.io/cocoapods/p/UIDefaultFont.svg?style=flat)](http://cocoapods.org/pods/UIDefaultFont)

Replace the system font in the whole app easily

No more wasted time and effort, searching and overriding the font of every displayed string in your app. At runtime, you can change the system font and it will be replaced everywhere it's used in the application.

This library is simply one extension to `UIFont`, adding three properties:
* `normalFontName`
* `boldFontName`
* `italicFontName`

## Usage

Simply:

```swift
UIFont.normalFontName = "Courier"
UIFont.boldFontName = "Noteworthy-Bold"
UIFont.italicFontName = "HelveticaNeue-ThinItalic"
```

## Requirements

* Xcode 8.0
* Swift 3.2+

## Installation

UIDefaultFont is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIDefaultFont'
```

## Author

Gaël Foppolo, me@gaelfoppolo.com

## Contribution and Maintenance 
System font available on iOS is surely subject to possible change,
and when it does, this library should still work properly.
If you would like to help maintain or improve this library please feel free to do so. 

## License

UIDefaultFont is free software, and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: /LICENSE