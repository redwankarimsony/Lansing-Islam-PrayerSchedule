//
//  WebView.swift
//  LannsingIslam
//
//  Created by Redwan Sony on 10/20/22.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let url: URL
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        let request = URLRequest(url:url)
        webView.load(request)
        return webView

    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
            }
}
