//
//  PlaylistDetailView.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/14.
//

import SwiftUI

struct PlaylistDetailView: View {
    let playlist: Playlist
    @State private var isPlaying = false
    @State private var volume = 0.5
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    Image(playlist.coverImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                        .cornerRadius(10)
                        .padding()
                    Text(playlist.title)
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                }
                VStack {
                    Spacer()
                    MusicControllerView()
                        .background(Color.white)
                }
            }
            .navigationTitle(playlist.title)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct PlaylistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView(playlist: Playlist(title: "Chill Hits", coverImage: "chill"))
    }
}
