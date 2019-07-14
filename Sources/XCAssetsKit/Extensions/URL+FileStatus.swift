//
//  URL+FileStatus.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation
extension URL {
    enum FileStatus {
        case file
        case directory
        case notExist
    }
    
    public var isDirectory: Bool {
        return fileStatus == .directory
    }
    
    public var isFile: Bool {
        return fileStatus == .file
    }
    
    public var isExist: Bool {
        return fileStatus != .notExist
    }
    
    var fileStatus: FileStatus {
        let fileStatus: FileStatus
        var isDir: ObjCBool = false
        if FileManager.default.fileExists(atPath: path, isDirectory: &isDir) {
            if isDir.boolValue {
                fileStatus = .directory
            }
            else {
                fileStatus = .file
            }
        }
        else {
            fileStatus = .notExist
        }
        return fileStatus
    }
}
