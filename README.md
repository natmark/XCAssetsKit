![Header](https://github.com/natmark/XCAssetsKit/blob/master/Resources/header.png?raw=true)

<p align="center">
<a href="https://travis-ci.com/natmark/XCAssetsKit">
<img src="https://travis-ci.com/natmark/XCAssetsKit.svg?token=nzmukddH8XeX8xpNA4qP&branch=master"
alt="Build Status">
</a>
<a href="https://cocoapods.org/pods/XCAssetsKit">
<img src="https://img.shields.io/cocoapods/v/XCAssetsKit.svg?style=flat"
alt="Pods Version">
</a>
<a href="https://github.com/apple/swift">
<img alt="Swift" src="https://img.shields.io/badge/swift-5.0-orange.svg">
</a>
</p>

# XCAssetsKit
.xcassets parser written in Swift 🐧

## Usage
![](https://github.com/natmark/XCAssetsKit/blob/master/Resources/imageassets_screenshot.png?raw=true)

```Swift
    let xcassets: XCAssets = try! XCAssets(fileURL: URL(fileURLWithPath: "path/to/file.xcassets"))

    let contents: XCAssetsContents = xcassets.contents // Decode Contents.json
    let assets: [Assets] = xcassets.assets // Decode Assets
    
    if case .imageSet(let imageSet) == assets[0] {
        print(imageSet.fileName) // image_png
        print(imageSet.contents.images.count) // 3

        print(imageSet.contents.images[0].filename) // Optional("Artboard.png")
        print(imageSet.contents.images[0].scale) // Optional("1x")

        print(imageSet.contents.images[1].filename) // Optional("Artboard@2x.png")
        print(imageSet.contents.images[1].scale) // Optional("2x")

        print(imageSet.contents.images[2].filename) // Optional("Artboard@3x.png")
        print(imageSet.contents.images[2].scale) // Optional("3x")
    }
```

## Supported Assets
- [x] folder
- [x] imageset
- [x] colorset
- [x] dataset
- [x] textureset
- [x] mipmapset
- [x] cubetextureset
- [ ] appiconset
- [ ] appiconset
- [ ] launchimage
- [ ] brandassets
- [ ] appiconset
- [ ] iconset
- [ ] stickericonset
- [ ] arresorucegroup
- [ ] arreferenceimage
- [ ] arobject
- [ ] complicationset
- [ ] imagestack
- [ ] imagestacklayer
- [ ] spriteatlas
- [ ] gcdashboardimage
- [ ] gcleaderboard
- [ ] gcleaderboardSet
- [ ] stickerpack
- [ ] sticker
- [ ] stickersequence


## License
XCAssetsKit is available under the MIT license. See the LICENSE file for more info.
