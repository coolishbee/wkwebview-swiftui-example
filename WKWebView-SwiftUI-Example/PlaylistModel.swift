//
//  PlaylistModel.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/14.
//

import SwiftUI

struct Playlist: Identifiable {
  let id = UUID()
  let title: String
  let coverImage: String
}
