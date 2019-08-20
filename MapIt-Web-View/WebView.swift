//
//  MapView.swift
//  MapIt-Web-View
//
//  Created by Branden Clark on 8/15/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @Binding var latitude: String
    @Binding var longitude: String
    let formatter = NumberFormatter()
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        let latitude = self.formatter.number(from: self.latitude)?.doubleValue ?? 0
        let longitude = self.formatter.number(from: self.longitude)?.doubleValue ?? 0
        
        let urlString = "https://www.google.com/maps/@\(latitude),\(longitude),200m/data=!3m1!1e3"

        view.load(URLRequest(url: URL(string: urlString)!))
    }
}

//#if DEBUG
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
//#endif
