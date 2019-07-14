//
//  ResrouceLoader.swift
//  XCAssetsKitTests
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation
struct ResourceLoader {
    static var testResourceDirectory: URL {
        return URL(fileURLWithPath: #file).deletingLastPathComponent()
    }

    static func url(forResource: String, withExtension: String?) -> URL? {
        if let withExtension = withExtension {
            return testResourceDirectory.appendingPathComponent(forResource).appendingPathExtension(withExtension)
        } else {
            return testResourceDirectory.appendingPathComponent(forResource)
        }
    }
}
