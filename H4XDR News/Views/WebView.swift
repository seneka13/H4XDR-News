//
//  WebView.swift
//  H4XDR News
//
//  Created by Samat Musaev on 25/8/22.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {

    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString = urlString {
            if let url = URL(string: urlString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
