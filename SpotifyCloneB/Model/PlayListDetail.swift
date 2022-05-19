//
//  PlayListDetail.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 19/05/22.
//

import Foundation

struct PlaylistDetail: Codable {
    let name: String
    let description: String
    let followers: Followers
    let tracks: TracksDetail
}

struct Followers: Codable {
    let total: Int
}

struct TracksDetail: Codable {
    let items: [ItemDetail]
}

struct ItemDetail: Codable {
    let track: Track
}

struct Track: Codable {
    let album: Album
}

struct Album: Codable {
    let name: String
    let artists: [Artists]
    let images: [ImageDetail]
}

struct Artists: Codable {
    let name: String
}

struct ImageDetail: Codable {
    let height: Int?
    let url: String?
    let width: Int?
}
