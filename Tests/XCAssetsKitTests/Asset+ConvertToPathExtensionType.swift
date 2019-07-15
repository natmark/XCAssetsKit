//
//  Asset+ConvertToPathExtensionType.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

extension Asset {
    var assets: [Asset] {
        switch self {
        case .folder(let asset):
            return asset.assets
        case .imageSet(let asset):
            return asset.assets
        case .colorSet(let asset):
            return asset.assets
        case .dataSet(let asset):
            return asset.assets
        case .textureSet(let asset):
            return asset.assets
        case .cubeTextureSet(let asset):
            return asset.assets
        case .mipmapSet(let asset):
            return asset.assets
        case .launchImage:
            return []
        case .brandAssets:
            return []
        case .appIconSet:
            return []
        case .iconSet:
            return []
        case .stickerIconSet:
            return []
        case .arResoruceGroup:
            return []
        case .arReferenceImage:
            return []
        case .arObject:
            return []
        case .complicationSet:
            return []
        case .imageStack:
            return []
        case .imageStackLayer:
            return []
        case .spriteAtlas:
            return []
        case .gameCenterDashboardImage:
            return []
        case .gameCenterLeaderBoard:
            return []
        case .gameCenterLeaderBoardSet:
            return []
        case .stickerPack:
            return []
        case .sticker:
            return []
        case .stickerSequence:
            return []
            
        }
    }
    var pathExtensionType: PathExtensionType {
        switch self {
        case .folder:
            return .folder
        case .imageSet:
            return .imageSet
        case .colorSet:
            return .colorSet
        case .dataSet:
            return .dataSet
        case .textureSet:
            return .textureSet
        case .cubeTextureSet:
            return .cubeTextureSet
        case .mipmapSet:
            return .mipmapSet
        case .launchImage:
            return .launchImage
        case .brandAssets:
            return .brandAssets
        case .appIconSet:
            return .appIconSet
        case .iconSet:
            return .iconSet
        case .stickerIconSet:
            return .stickerIconSet
        case .arResoruceGroup:
            return .arResoruceGroup
        case .arReferenceImage:
            return .arReferenceImage
        case .arObject:
            return .arObject
        case .complicationSet:
            return .complicationSet
        case .imageStack:
            return .imageStack
        case .imageStackLayer:
            return .imageStackLayer
        case .spriteAtlas:
            return .spriteAtlas
        case .gameCenterDashboardImage:
            return .gameCenterDashboardImage
        case .gameCenterLeaderBoard:
            return .gameCenterLeaderBoard
        case .gameCenterLeaderBoardSet:
            return .gameCenterLeaderBoardSet
        case .stickerPack:
            return .stickerPack
        case .sticker:
            return .sticker
        case .stickerSequence:
            return .stickerSequence
        }
    }
}
