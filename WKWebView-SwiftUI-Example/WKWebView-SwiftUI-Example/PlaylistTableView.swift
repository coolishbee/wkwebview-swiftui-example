//
//  PlaylistTableView.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/14.
//

import SwiftUI

struct PlaylistTableView: View {
    @State private var playlists = [
      Playlist(title: "Chill Hits", coverImage: "chill"),
      Playlist(title: "Indie Mix", coverImage: "indie"),
      Playlist(title: "Hip Hop Vibes", coverImage: "hiphop"),
      Playlist(title: "Pop Party", coverImage: "pop")
    ]

    var body: some View {
      List {
        ForEach(playlists) { playlist in
          PlaylistView(playlist: playlist)
        }
        .onDelete { indexSet in
          playlists.remove(atOffsets: indexSet)
        }
        .onMove { indices, newOffset in
          playlists.move(fromOffsets: indices, toOffset: newOffset)
        }
      }
      //.navigationTitle("My Playlists")
      //.navigationBarItems(trailing: EditButton())
    }
  }

struct PlaylistTableView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistTableView()
    }
}
