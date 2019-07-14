//
//  URL+ContentsJSON.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation
extension URL {
    public func contentsJSON() throws -> Data {
        let file = self.appendingPathComponent("Contents").appendingPathExtension("json")
        return try Data(contentsOf: file)
    }
}
