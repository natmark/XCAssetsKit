//
//  XCAssetsTests.swift
//  XCAssetsKitTests
//
//  Created by Atsuya Sato on 2019/07/16.
//

import XCTest
@testable import XCAssetsKit

final class XCAssetsTests: XCTestCase {
    func testLoadXCAssets() {
        guard let url = ResourceLoader.url(forResource: "Assets", withExtension: "xcassets") else {
            return
        }
        
        let xcassets = try! XCAssets(fileURL: url)
        XCTAssertEqual(xcassets.contents.info.author, "xcode")
        XCTAssertEqual(xcassets.contents.info.version, 1)
        
        XCTAssertEqual(xcassets.contents.properties?.compressionType, "automatic")
    }
}
