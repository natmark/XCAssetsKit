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

    init(pathExtensionType: PathExtensionType, jsonData: Data, assets: [Asset], fileURL: URL) throws {
        switch pathExtensionType {
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
