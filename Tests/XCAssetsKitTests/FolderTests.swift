//
//  FolderTests.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import XCTest
@testable import XCAssetsKit

final class FolderTests: XCTestCase {
    func testLoadAssetsWithFolder() {
        guard let url = ResourceLoader.url(forResource: "Assets+Folder", withExtension: "xcassets") else {
            return
        }

        let xcassets = try! XCAssets(fileURL: url)
        XCTAssertEqual(xcassets.assets[0].pathExtensionType, .folder)
        XCTAssertEqual(xcassets.assets[0].assets[0].pathExtensionType, .imageSet)
        XCTAssertEqual(xcassets.assets[0].assets[1].pathExtensionType, .folder)
        XCTAssertEqual(xcassets.assets[0].assets[1].assets[0].pathExtensionType, .imageSet)
        XCTAssertEqual(xcassets.assets[0].assets[1].assets[1].pathExtensionType, .folder)
        XCTAssertEqual(xcassets.assets[0].assets[1].assets[1].assets[0].pathExtensionType, .folder)
        XCTAssertEqual(xcassets.assets[0].assets[1].assets[1].assets[0].assets[0].pathExtensionType, .imageSet)
        XCTAssertEqual(xcassets.assets[0].assets[1].assets[1].assets[1].pathExtensionType, .folder)
        XCTAssertEqual(xcassets.assets[0].assets[1].assets[1].assets[1].assets[0].pathExtensionType, .imageSet)
    }
}

