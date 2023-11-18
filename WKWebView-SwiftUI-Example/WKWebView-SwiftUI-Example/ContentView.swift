//
//  ContentView.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/18.
//

import SwiftUI

struct ContentView: View {
    @State var selectedId = 1
    
    var body: some View {
        NavigationStack() {
            TabView(selection: $selectedId) {
                CustomWebView(urlToLoad: "http://220.73.6.36")
                    .tabItem {
                        //Image(systemName: "arrow.right.circle.fill")
                        //Text("Home")
                        Label("Home", systemImage: "arrow.right.circle.fill")
                    }.tag(1)
                ListView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Users")
                    }.tag(2)
                PlaylistTableView()
                    .tabItem {
                        Image(systemName: "forward.fill")
                        Text("Test")
                    }.tag(3)
            }
            .navigationTitle(selectedId == 1 ? "" : "My Playlists" )
            .navigationBarItems(trailing: selectedId == 1 ? nil : EditButton())
            //.font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
