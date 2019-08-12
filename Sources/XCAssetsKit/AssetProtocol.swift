//
//  AssetProtocol.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

protocol AssetProtocol {
    associatedtype Contents
    var contents: Contents { get }
    var assets: [Asset] { get }
    var fileName: String { get }
    var fileURL: URL { get }
}
