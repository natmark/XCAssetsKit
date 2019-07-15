//
//  DataSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

public struct DataSet {
    public var contents: DataSetContents
}

public struct DataSetContents {
    public var info: Info
    public var properties: Properties?
    public var data: [Data]?
    
    public struct Data: Decodable {
        public var idiom: String
        public var filename: String?
        public var unassigned: Bool?
        public var universalTypeIdentifier: String?
        public var graphicsFeatureSet: String?
        public var memory: String?
        public var displayGamut: String?
        private enum CodingKeys: String, CodingKey {
            case idiom
            case filename
            case unassigned
            case universalTypeIdentifier = "universal-type-identifier"
            case graphicsFeatureSet = "graphics-feature-set"
            case memory
            case displayGamut = "display-gamut"
        }
    }

    public struct Properties: Decodable {
        public var compressionType: String?
        public var onDemandResourceTags: [String]?
        
        private enum CodingKeys: String, CodingKey {
            case compressionType = "compression-type"
            case onDemandResourceTags = "on-demand-resource-tags"
        }
    }
}