//
//  XCAssetsKitError.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public enum XCAssetsKitError: Error {
    case notXCAssets(path: URL)
}

extension XCAssetsKitError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .notXCAssets(let path):
            return "Not a .xcassets \(path.path)."
        }
    }
}
