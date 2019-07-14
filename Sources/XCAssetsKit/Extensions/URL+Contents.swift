//
//  URL+Contents.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

extension URL {
    public func contents() throws -> [URL] {
        let files: [URL]
        do {
            files = try FileManager.default.contentsOfDirectory(at: self, includingPropertiesForKeys: nil, options: [])
        }
        return files
    }
}
