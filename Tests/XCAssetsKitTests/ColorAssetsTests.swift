//
//  ColorAssetsTests.swift
//  XCAssetsKitTests
//
//  Created by Atsuya Sato on 2019/07/16.
//

import XCTest
@testable import XCAssetsKit

final class ColorAssetsTests: XCTestCase {
    func testLoadColorAssets() {
        guard let url = ResourceLoader.url(forResource: "ColorAssets", withExtension: "xcassets") else {
            return
        }
        
        let xcassets = try! XCAssets(fileURL: url)
        
        if case .colorSet(let colorSet) = xcassets.assets[0] {
            XCTAssertEqual(colorSet.fileName, "Red")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.red, "0xFF")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.green, "0x00")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.blue, "0x00")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.alpha, "1.000")
        }
        
        if case .colorSet(let colorSet) = xcassets.assets[1] {
            XCTAssertEqual(colorSet.fileName, "Blue")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.red, "0.000")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.green, "0.194")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.blue, "1.000")
            XCTAssertEqual(colorSet.contents.colors[0].color.components.alpha, "1.000")
            
            XCTAssertEqual(colorSet.contents.colors[1].color.components.red, "0.695")
            XCTAssertEqual(colorSet.contents.colors[1].color.components.green, "1.000")
            XCTAssertEqual(colorSet.contents.colors[1].color.components.blue, "1.000")
            XCTAssertEqual(colorSet.contents.colors[1].color.components.alpha, "1.000")
        }
    }
}
