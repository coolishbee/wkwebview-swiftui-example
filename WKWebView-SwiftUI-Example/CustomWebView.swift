//
//  CustomWebView.swift
//  WKWebView-SwiftUI-Example
//
//  Created by james on 2023/11/07.
//

import SwiftUI
import WebKit

struct CustomWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: urlToLoad) else{
            return WKWebView()
        }
        
        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        
        return webview
    }
        
    func updateUIView(_ uiView: WKWebView,
                      context: UIViewRepresentableContext<CustomWebView>) {
        
    }
}

struct CustomWebView_Previews: PreviewProvider {
    static var previews: some View {
        CustomWebView(urlToLoad: "http://220.73.6.36")
    }
}
