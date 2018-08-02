# YKPhotoCircleCrop

[![Version](https://img.shields.io/cocoapods/v/YKPhotoCircleCrop.svg?style=flat)](http://cocoapods.org/pods/YKPhotoCircleCrop)
[![Platform](https://img.shields.io/cocoapods/p/YKPhotoCircleCrop.svg?style=flat)](http://cocoapods.org/pods/YKPhotoCircleCrop)
<a hred="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg" alt="Carthage"></a>
<img src="https://img.shields.io/badge/language-swift-orange.svg" alt="Language: Swift">
[![License](https://img.shields.io/cocoapods/l/YKPhotoCircleCrop.svg?style=flat)](http://cocoapods.org/pods/YKPhotoCircleCrop)

YKPhotoCircleCrop is a simple circular photo cropper writter in Swift, based on Whatsapp.

<img src="https://github.com/yurikoles/YKPhotoCircleCrop/blob/master/Resources/screenshot1.png" alt="Screenshot 1" height="50%" width="50%">

## Requirements
* iOS 8.0+
* Xcode 9+
* Swift 4

## Installation

YKPhotoCircleCrop is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YKPhotoCircleCrop'
```

YKPhotoCircleCrop is available through [Carthage](https://github.com/Carthage/Carthage). To install
it, simply add the following line to your Cartfile:

```ruby
github "yurikoles/YKPhotoCircleCrop"
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage
To show the cropper you have just to create a ```YKPhotoCircleCropViewController``` view controller and pass it the image you want to crop.
```swift
let circleCropController = YKCircleCropViewController()
circleCropController.image = UIImage(named: "my_photo.jpg")!

present(circleCropController, animated: true, completion: nil)
```

To handle the crop action or the cancel action, you have to implement the protocol ```YKCircleCropViewControllerDelegate``` and set the delegate
```swift
// Delegate
circleCropController.delegate = self

// MARK: - YKCircleCropViewControllerDelegate
func circleCropDidCancel() {
     print("User canceled the crop flow")
}
    
func circleCropDidCropImage(_ image: UIImage) {
     imageView.image = image
     print("Image cropped!")
}
```

### Image resize
YKPhotoCircleCrop can resize the cropped image to a specific width and height.

```swift
// Set the imageSize you want to get
circleCropController.imageSize = CGSize(width: 200, height: 200)
```

### Localization
YKPhotoCircleCrop support localized strings. To get button titles localized, just sets a value to ```selectTitle``` and ```cancelTitle```
```swift
// 🌎 use selectTitle and cancelTitle to localize buttons
circleCropController.selectTitle = NSLocalizedString("select-button", comment: "Select")
circleCropController.cancelTitle = NSLocalizedString("cancel-button", comment: "Cancel")
```


## Dependencies
YKPhotoCircleCrop is based on AAPhotoCircleCrop, which is in turn based on [KACircleCropViewController](https://github.com/kekearif/KACircleCropViewController)

## Author

Yurii Kolesnykov ([@yurikoles](https://twitter.com/yurikoles)), yurikoles@gmail.com

## License

YKPhotoCircleCrop is available under the MIT license. See the LICENSE file for more info.
