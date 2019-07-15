//
//  ColorSet.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public struct ColorSet {
    public var contents: ColorSetContents
}

public struct ColorSetContents {
    public var info: Info
    public var colors: [Color]
    public struct Color {
        public var idiom: String
        public var displayGamut: String?
        public var appearances: [Appearance]?
        public var color: Color

        private enum CodingKeys: String, CodingKey {
            case idiom
            case displayGamut = "display-gamut"
        }
        
        public struct Appearance {
            public var appearance: String
            public var value: String
        }
        public struct Color {
            public var colorSpace: String
            public var components: Components
            public var reference: String?

            private enum CodingKeys: String, CodingKey {
                case colorSpace = "color-space"
                case components
                case reference
            }
            
            public struct Components {
                public var red: String?
                public var blue: String?
                public var green: String?
                public var alpha: String?
                public var white: String?
            }
        }
    }
}
