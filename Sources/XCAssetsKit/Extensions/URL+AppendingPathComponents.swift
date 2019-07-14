//
//  URL+AppendingPathComponents.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

extension URL {
    func appendingPathComponents(pathComponents: [String]) -> URL {
        if pathComponents.count == 0 {
            return self
        }
        
        var path = self
        pathComponents.dropLast().forEach {
            path = path.appendingPathComponent($0, isDirectory: true)
        }
        return path.appendingPathComponent(pathComponents.last!)
    }
}
