//
//  Asset.swift
//  XCAssetsKit
//
//  Created by Atsuya Sato on 2019/07/15.
//

import Foundation

public enum Asset {
    case folder(asset: Folder)
    case imageSet(asset: ImageSet)
    case colorSet(asset: ColorSet)
    case dataSet(asset: DataSet)
    case textureSet(asset: TextureSet)
    case cubeTextureSet(asset: CubeTextureSet)
    case mipmapSet(asset: MipmapSet)
    case launchImage
    case brandAssets
    case appIconSet
    case iconSet
    case stickerIconSet
    case arResoruceGroup
    case arReferenceImage
    case arObject
    case complicationSet
    case imageStack
    case imageStackLayer
    case spriteAtlas
    case gameCenterDashboardImage
    case gameCenterLeaderBoard
    case gameCenterLeaderBoardSet
    case stickerPack
    case sticker
    case stickerSequence

    init(assetType: AssetType, jsonData: Data, assets: [Asset], fileURL: URL) throws {
        switch assetType {
        case .folder:
            self = .folder(asset: Folder(contents: try JSONDecoder().decode(Folder.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .imageSet:
            self = .imageSet(asset: ImageSet(contents: try JSONDecoder().decode(ImageSet.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .colorSet:
            self = .colorSet(asset: ColorSet(contents: try JSONDecoder().decode(ColorSet.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .dataSet:
            self = .dataSet(asset: DataSet(contents: try JSONDecoder().decode(DataSet.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .textureSet:
            self = .textureSet(asset: TextureSet(contents: try JSONDecoder().decode(TextureSet.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .cubeTextureSet:
            self = .cubeTextureSet(asset: CubeTextureSet(contents: try JSONDecoder().decode(CubeTextureSet.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .mipmapSet:
            self = .mipmapSet(asset: MipmapSet(contents: try JSONDecoder().decode(MipmapSet.Contents.self, from: jsonData), assets: assets, fileName: fileURL.deletingPathExtension().lastPathComponent, fileURL: fileURL))
        case .launchImage:
            self = .launchImage
        case .brandAssets:
            self = .brandAssets
        case .appIconSet:
            self = .appIconSet
        case .iconSet:
            self = .iconSet
        case .stickerIconSet:
            self = .stickerIconSet
        case .arResoruceGroup:
            self = .arResoruceGroup
        case .arReferenceImage:
            self = .arReferenceImage
        case .arObject:
            self = .arObject
        case .complicationSet:
            self = .complicationSet
        case .imageStack:
            self = .imageStack
        case .imageStackLayer:
            self = .imageStackLayer
        case .spriteAtlas:
            self = .spriteAtlas
        case .gameCenterDashboardImage:
            self = .gameCenterDashboardImage
        case .gameCenterLeaderBoard:
            self = .gameCenterLeaderBoard
        case .gameCenterLeaderBoardSet:
            self = .gameCenterLeaderBoardSet
        case .stickerPack:
            self = .stickerPack
        case .sticker:
            self = .sticker
        case .stickerSequence:
            self = .stickerSequence
        }
    }
}

public extension Asset {
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
}

public extension Asset {
    var assetType: AssetType {
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
