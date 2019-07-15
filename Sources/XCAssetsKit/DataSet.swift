//
//  DataSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public struct DataSet: AssetProtocl {
    public typealias Contents = DataSetContents
    public var contents: Contents
    public var assets: [Asset] = []
    public var fileName: String
    public var fileURL: URL
}

public struct DataSetContents: Decodable {
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
