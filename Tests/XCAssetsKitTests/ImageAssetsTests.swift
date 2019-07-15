//
//  ImageAssetsTests.swift
//  XCAssetsKitTests
//
//  Created by Atsuya Sato on 2019/07/15.
//

import XCTest
@testable import XCAssetsKit

final class ImageAssetsTests: XCTestCase {
    func testLoadImageAssets() {
        guard let url = ResourceLoader.url(forResource: "ImageAssets", withExtension: "xcassets") else {
            return
        }

        let xcassets = try! XCAssets(fileURL: url)
        XCTAssertEqual(xcassets.contents.info.author, "xcode")
        XCTAssertEqual(xcassets.contents.info.version, 1)

        XCTAssertEqual(xcassets.contents.properties?.compressionType, "automatic")

        if case .imageSet(let imageSet) = xcassets.assets[0] {
            XCTAssertEqual(imageSet.fileName, "image_png")
            XCTAssertEqual(imageSet.assets.count, 0)
            XCTAssertNil(imageSet.contents.properties)
            XCTAssertEqual(imageSet.contents.images.count, 3)
        }

        if case .imageSet(let imageSet) = xcassets.assets[1] {
            XCTAssertEqual(imageSet.fileName, "image_pdf")
            XCTAssertEqual(imageSet.assets.count, 0)
            XCTAssertNotNil(imageSet.contents.properties)
            XCTAssertEqual(imageSet.contents.images.count, 1)
        }
    }
}
