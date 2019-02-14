//
//  Song.swift
//  Ressuscitou
//
//  Created by Tiago Maia Lopes on 14/02/19.
//  Copyright © 2019 Tiago Maia Lopes. All rights reserved.
//

import Foundation

/// A temporary song object parsed from a json and used by persistence routines.
/// - Note: Although this type could be used in controllers, its not meant to be persisted, but to be an internal
///         representation for the store routines, that use core data.
struct Song: Codable {

    // MARK: Properties

    // The basic properties of a song.
    let title: String
    let number: Int
    let category: Int
    let base64Html: String

    // The categories it might belongs to.
    let isForFinal: Bool
    let isForAdvent: Bool
    let isForBreadFraction: Bool
    let isForChildren: Bool
    let isForChristmas: Bool
    let isForCommunion: Bool
    let isForEaster: Bool
    let isForEntrance: Bool
    let isForLaudsOrEve: Bool
    let isForLent: Bool
    let isForPeace: Bool
    let isForPentecost: Bool
    let isForVirginMary: Bool

    enum CodingKeys: String, CodingKey {
        case title = "titulo"
        case number = "numero"
        case category = "categoria"
        case base64Html = "html_base64"
        case isForFinal = "cfin"
        case isForAdvent = "adve"
        case isForBreadFraction = "fpao"
        case isForChildren = "cria"
        case isForChristmas = "nata"
        case isForCommunion = "comu"
        case isForEaster = "pasc"
        case isForEntrance = "entr"
        case isForLaudsOrEve = "laud"
        case isForLent = "quar"
        case isForPeace = "cpaz"
        case isForPentecost = "pent"
        case isForVirginMary = "virg"
    }
}

/// A temporary songs container object parsed from a json and used by persistence routines.
/// - Note: Although this type could be used in controllers, its not meant to be persisted, but to be an internal
///         representation for the store routines, that use core data.
struct Songs: Codable {

    // MARK: Properties

    let songs: [Song]
}
