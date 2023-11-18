//
//  PlaylistView.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/14.
//

import SwiftUI

struct PlaylistView: View {
    let playlist: Playlist

    var body: some View {
      NavigationLink(destination: PlaylistDetailView(playlist: playlist)) {
        HStack {
          Image(playlist.coverImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 70, height: 70)
            .cornerRadius(5)
            .padding(.leading, 8)
          Text(playlist.title)
            .font(.headline)
            .lineLimit(1)
          Spacer()
        }
        .padding(.vertical, 8)
      }
    }
  }

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView(playlist: Playlist(title: "Chill Hits", coverImage: "chill"))
    }
}
