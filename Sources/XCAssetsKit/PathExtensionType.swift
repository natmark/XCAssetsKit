//
//  PathExtensionType.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

enum PathExtensionType: String {
    case folder = ""
    case imageSet = "imageset"
    case colorSet = "colorser"
    case dataSet = "dataset"
    case textureSet = "textureset"
    case cubeTextureSet = "cubetextureset"
    case mipmapSet = "mipmapset"
    case launchImage = "launchimage"
    case brandAssets = "brandassets"
    case appIconSet = "appiconset"
    case iconSet = "iconset"
    case stickerIconSet = "stickericonset"
    case arResoruceGroup = "arresourcegroup"
    case arReferenceImage = "arreferenceimage"
    case arObject = "arobject"
    case complicationSet = "complicationset"
    case imageStack = "imagestack"
    case imageStackLayer = "imageStackLayer"
    case spriteAtlas = "spriteatlas"
    case gameCenterDashboardImage = "gcdashboardimage"
    case gameCenterLeaderBoard = "gcleaderboard"
    case gameCenterLeaderBoardSet = "gcleaderboardset"
    case stickerPack = "stickerpack"
    case sticker = "sticker"
    case stickerSequence = "stickersequense"
    
    public var acceptedChildAssetTypes: [PathExtensionType] {
        switch self {
        case .folder:
            return [.folder, .imageSet, .colorSet, .dataSet, .textureSet, .cubeTextureSet, .launchImage, .brandAssets, .appIconSet, .iconSet, .stickerIconSet, .arResoruceGroup, .complicationSet, .imageStack, .spriteAtlas, .gameCenterDashboardImage, .gameCenterLeaderBoard, .gameCenterLeaderBoardSet, .stickerPack]
        case .imageSet:
            return []
        case .colorSet:
            return []
        case .dataSet:
            return []
        case .textureSet:
            return [.mipmapSet]
        case .cubeTextureSet:
            return [.mipmapSet]
        case .mipmapSet:
            return []
        case .launchImage:
            return []
        case .brandAssets:
            return [.folder, .imageSet, .colorSet, .dataSet, .textureSet, .cubeTextureSet, .launchImage, .brandAssets, .appIconSet, .iconSet, .stickerIconSet, .arResoruceGroup, .complicationSet, .imageStack, .spriteAtlas, .stickerPack]
        case .appIconSet:
            return []
        case .iconSet:
            return []
        case .stickerIconSet:
            return []
        case .arResoruceGroup:
            return [.arReferenceImage, .arObject]
        case .arReferenceImage:
            return []
        case .arObject:
            return []
        case .complicationSet:
            return [.imageSet]
        case .imageStack:
            return [.imageStackLayer]
        case .imageStackLayer:
            return [.imageSet]
        case .spriteAtlas:
            return [.imageSet]
        case .gameCenterDashboardImage:
            return [.imageSet]
        case .gameCenterLeaderBoard:
            return [.imageStack]
        case .gameCenterLeaderBoardSet:
            return [.imageStack]
        case .stickerPack:
            return [.sticker, .stickerSequence]
        case .sticker:
            return [.folder, .imageSet, .colorSet, .dataSet, .textureSet, .cubeTextureSet, .launchImage, .brandAssets, .appIconSet, .iconSet, .stickerIconSet, .arResoruceGroup, .complicationSet, .imageStack, .spriteAtlas, .stickerPack]
        case .stickerSequence:
            return []
        }
    }
}
