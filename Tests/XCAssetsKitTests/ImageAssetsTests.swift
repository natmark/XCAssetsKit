//
//  ImageAssetsTests.swift
//  XCAssetsKitTests
//
//  Created by Atsuya Sato on 2019/07/15.
//

import XCTest
@testable import XCAssetsKit

final class ImageAssetsTests: XCTestCase {
    func testLoading() {
        guard let url = ResourceLoader.url(forResource: "ImageAssets", withExtension: "xcassets") else {
            return
        }
        let xcassets = try! XCAssets(fileURL: url)
    }
}
