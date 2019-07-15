//
//  Folder.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

public struct Folder {
    public var contents: FolderContents
}

public struct FolderContents {
    public var info: Info
    public var properties: Properties?

    public struct Properties: Decodable {
        public var compressionType: String
        public var onDemandResourceTags: [String]?
        public var providesNamespace: Bool?
        private enum CodingKeys: String, CodingKey {
            case compressionType = "compression-type"
            case onDemandResourceTags = "on-demand-resource-tags"
            case providesNamespace = "provides-namespace"
        }
    }
}
