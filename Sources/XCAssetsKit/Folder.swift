//
//  Folder.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public struct Folder: AssetProtocol {
    public typealias Contents = FolderContents
    public var contents: Contents
    public var assets: [Asset] = []
    public var fileName: String
    public var fileURL: URL
}

public struct FolderContents: Decodable {
    public var info: Info
    public var properties: Properties?

    public struct Properties: Decodable {
        public var compressionType: String?
        public var onDemandResourceTags: [String]?
        public var providesNamespace: Bool?
        private enum CodingKeys: String, CodingKey {
            case compressionType = "compression-type"
            case onDemandResourceTags = "on-demand-resource-tags"
            case providesNamespace = "provides-namespace"
        }
    }
}
