//
//  MipmapSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public struct MipmapSet: AssetProtocol {
    public typealias Contents = MipmapSetContents
    public var contents: Contents
    public var assets: [Asset] = []
    public var fileName: String
    public var fileURL: URL
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
