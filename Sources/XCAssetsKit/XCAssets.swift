//
//  XCAssets.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation
public struct XCAssets {
    public var contents: XCAssetsContents
    public var assets: [Asset] = []

    public init(fileURL: URL) throws {
        if fileURL.pathExtension != "xcassets" {
            throw XCAssetsKitError.notXCAssets(path: fileURL)
        }
        let contents = try JSONDecoder().decode(XCAssetsContents.self, from: fileURL.contentsJSON())
        self.contents = contents
        self.assets = try loadAssets(fileURL: fileURL, acceptedChildAssetTypes: PathExtensionType.folder.acceptedChildAssetTypes)
    }
    
    private func loadAssets(fileURL: URL, acceptedChildAssetTypes: [PathExtensionType]) throws -> [Asset] {
        var contents: [Asset] = []

        for content in try fileURL.contents() {
            if !content.isDirectory {
                continue
            }
            guard let pathExtension = PathExtensionType(rawValue: content.pathExtension) else {
                continue
            }
            if !acceptedChildAssetTypes.contains(pathExtension) {
                continue
            }
            let asset = try Asset(pathExtensionType: pathExtension, jsonData: content.contentsJSON(), assets: loadAssets(fileURL: content, acceptedChildAssetTypes: pathExtension.acceptedChildAssetTypes), fileURL: content)

            contents.append(asset)
        }

        return contents
    }
}

public struct XCAssetsContents: Decodable {
    public var info: Info
    public var properties: Properties?

    public struct Properties: Decodable {
        public var compressionType: String
        private enum CodingKeys: String, CodingKey {
            case compressionType = "compression-type"
        }
    }
}
