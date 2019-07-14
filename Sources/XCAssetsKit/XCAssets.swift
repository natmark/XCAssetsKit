//
//  XCAssets.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation
public struct XCAssets {
    public var contents: XCAssetsContents

    public init(fileURL: URL) throws {
        if fileURL.pathExtension != "xcassets" {
            throw XCAssetsKitError.notXCAssets(path: fileURL)
        }
        let contents = try JSONDecoder().decode(XCAssetsContents.self, from: fileURL.contentsJSON())
        self.contents = contents
    }
}

public struct XCAssetsContents: Decodable {
    var info: Info
    var properties: Properties?

    struct Info: Decodable {
        var version: Int
        var author: String
    }
    struct Properties: Decodable {
        var compressionType: String
        private enum CodingKeys: String, CodingKey {
            case compressionType = "compression-type"
        }
    }
}
