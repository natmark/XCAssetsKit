//
//  ImageSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public struct ImageSet: AssetProtocol {
    public typealias Contents = ImageSetContents
    public var contents: Contents
    public var assets: [Asset] = []
    public var fileName: String
    public var fileURL: URL
}

public struct ImageSetContents: Decodable {
    public var info: Info
    public var images: [Image]
    public var properties: Properties?
    
    public struct Properties: Decodable {
        public var autoScaling: String?
        public var compressionType: String?
        public var preservesVectorRepresentation: Bool?
        public var templateRenderingIntent: String?
        public var onDemandResourceTags: [String]?

        private enum CodingKeys: String, CodingKey {
            case autoScaling = "auto-scaling"
            case compressionType = "compression-type"
            case preservesVectorRepresentation = "preserves-vector-representation"
            case templateRenderingIntent = "template-rendering-intent"
            case onDemandResourceTags = "on-demand-resource-tags"
        }
    }
    
    public struct Image: Decodable {
        public var idiom: String
        public var widthClass: String?
        public var heightClass: String?
        public var languageDirection: String?
        public var filename: String?
        public var memory: String?
        public var scale: String?
        public var displayGamut: String?
        public var appearances: [Appearance]?
        public var alignmentInsets: AlignmentInsets?
        public var resizing: Resizing?

        private enum CodingKeys: String, CodingKey {
            case idiom
            case widthClass = "width-class"
            case heightClass = "height-class"
            case languageDirection = "language-direction"
            case filename
            case memory
            case scale
            case displayGamut = "display-gamut"
            case appearances
            case alignmentInsets = "alignment-insets"
            case resizing
        }
        
        public struct Appearance: Decodable {
            public var appearance: String
            public var value: String
        }
        
        public struct AlignmentInsets: Decodable {
            public var top: Int
            public var left: Int
            public var bottom: Int
            public var right: Int
        }
        
        public struct Resizing: Decodable {
            public var mode: String
            public var center: Center
            public var capInsets: CapInsets

            public struct Center: Decodable {
                public var mode: String
                public var width: Int?
                public var height: Int?
            }

            public struct CapInsets: Decodable {
                public var bottom: Int?
                public var top: Int?
                public var right: Int?
                public var left: Int?
            }
            
            private enum CodingKeys: String, CodingKey {
                case mode
                case center
                case capInsets = "cap-insets"
            }
        }
    }
}

