//
//  TextureSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

public struct TextureSet {
    public var contents: TextureSetContents
}

public struct TextureSetContents: Decodable {
    public var info: Info
    public var properties: Properties?
    public var textures: [Texture]?
    
    public struct Texture: Decodable {
        public var idiom: String
        public var filename: String
        public var graphicsFeatureSet: String?
        public var memory: String?
        public var displayGamut: String?
        public var scale: String?
        public var pixelFormat: String?
        public var unassigned: Bool?

        private enum CodingKeys: String, CodingKey {
            case idiom
            case filename
            case graphicsFeatureSet = "graphics-feature-set"
            case memory
            case displayGamut = "display-gamut"
            case scale
            case pixelFormat = "pixel-format"
            case unassigned = "unassigned"
        }
    }
    
    public struct Properties: Decodable {
        public var origin: String?
        public var interpretation: String?
        public var onDemandResourceTags: [String]?

        private enum CodingKeys: String, CodingKey {
            case origin
            case interpretation
            case onDemandResourceTags = "on-demand-resource-tags"
        }
    }
}
