# UIDefaultFont

[![CI Status](http://img.shields.io/travis/gaelfoppolo/UIDefaultFont.svg?style=flat)](https://travis-ci.org/gaelfoppolo/UIDefaultFont)
![Swift 4](https://img.shields.io/badge/Swift-4-orange.svg)
[![Version](https://img.shields.io/cocoapods/v/UIDefaultFont.svg?style=flat)](http://cocoapods.org/pods/UIDefaultFont)
[![License](https://img.shields.io/cocoapods/l/UIDefaultFont.svg?style=flat)](http://cocoapods.org/pods/UIDefaultFont)
[![Platform](https://img.shields.io/cocoapods/p/UIDefaultFont.svg?style=flat)](http://cocoapods.org/pods/UIDefaultFont)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/UIDefaultFont.svg)](http://cocoapods.org/pods/UIDefaultFont)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Replace the system font in the whole app easily

No more wasted time and effort, searching and overriding the font of every displayed string in your app. At runtime, you can change the system font and it will be replaced everywhere it's used in the application.

This library is simply one extension to `UIFont`, adding three properties:
* `normalFontName`
* `boldFontName`
* `italicFontName`

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

Simply:

```swift
UIFont.normalFontName = "Courier"
UIFont.boldFontName = "Noteworthy-Bold"
UIFont.italicFontName = "HelveticaNeue-ThinItalic"
```

If you want to be notify (to update already displayed labels for example), you can observe these three notifications:
* `normalFontChanged`
* `boldFontChanged`
* `italicFontChanged`

```swift
NotificationCenter.default.addObserver(self, selector: #selector(updateNormalFont), name: .normalFontChanged, object: nil)
```

## Requirements

* Xcode 9.0
* Swift 4

*Swift 3 support is available on the branch `swift-3` on this repository.*

## Installation

### CocoaPods

UIDefaultFont is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIDefaultFont'
```

### Carthage

If you use Carthage to manage your dependencies, simply add
UIDefaultFont to your `Cartfile`:

```
github "gaelfoppolo/UIDefaultFont"
```

If you use Carthage to build your dependencies, make sure you have added `UIDefaultFont.framework` to the "_Linked Frameworks and Libraries_" section of your target, and have included `UIDefaultFont.framework` in your Carthage framework copying build phase.

## Documentation

Full documentation is available on [CocoaDocs](http://cocoadocs.org/docsets/UIDefaultFont/). You can also install documentation locally using [jazzy](https://github.com/realm/jazzy).

## Author

Gaël Foppolo, me@gaelfoppolo.com

## Contribution and Maintenance 
System font available on iOS is surely subject to possible change,
and when it does, this library should still work properly.
If you would like to help maintain or improve this library please feel free to do so. 

## License

UIDefaultFont is free software, and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: /LICENSE