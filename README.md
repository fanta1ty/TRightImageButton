![LOGO]()

# TRightImageButton
TRightImageButton is a simple and flexible UI component fully written in Swift. TRightImageButton is developed to help programmers create a button with right image quickly without having to write many lines of codes.

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-brightgreen)](https://developer.apple.com/swift/)
[![Version](https://img.shields.io/cocoapods/v/TRightImageButton.svg?style=flat)](https://cocoapods.org/pods/TRightImageButton)
[![License](https://img.shields.io/cocoapods/l/TRightImageButton.svg?style=flat)](https://cocoapods.org/pods/TRightImageButton)
[![Platform](https://img.shields.io/cocoapods/p/TRightImageButton.svg?style=flat)](https://cocoapods.org/pods/TRightImageButton)
[![Email](https://img.shields.io/badge/contact-@thinhnguyen12389@gmail.com-blue)](thinhnguyen12389@gmail.com)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TRightImageButton is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TRightImageButton'
```

## Usage
```swift
import TRightImageButton
```

1) Initial ``TRightImageButton`` 
```swift
let rightImageButton = TRightImageButton()
```

2) To show title, please input into ``customTitleLabel.text`` property
```swift
rightImageButton.customTitleLabel.text = "Right Image Button"
```

3) To show right image, please add image into ``rightImageView.image`` property
```swift
rightImageButton.rightImageView.image = UIImage(named: "Image")
```

![til]()

## Requirements
- iOS 9.3 or later
- Swift 5.0 or later

## Author

fanta1ty, thinhnguyen12389@gmail.com

## License

TRightImageButton is available under the MIT license. See the LICENSE file for more info.
