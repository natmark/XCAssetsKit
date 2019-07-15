//
//  MipmapSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

public struct MipmapSet {
    public var contents: MipmapSetContents
}

public struct MipmapSetContents: Decodable {
    public var info: Info
    public var properties: Properties?
    public var levels: [Level]?

    public struct Level: Decodable {
        public var filename: String?
        public var mipmapLevel: String

        private enum CodingKeys: String, CodingKey {
            case filename
            case mipmapLevel
        }
    }

    public struct Properties: Decodable {
        public var levelMode: String?
        
        private enum CodingKeys: String, CodingKey {
            case levelMode = "level-mode"
        }
    }
}
