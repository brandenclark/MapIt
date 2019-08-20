//
//  ContentView.swift
//  MapIt-Web-View
//
//  Created by Branden Clark on 8/15/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var latitude: String = ""
    @State var longitude: String = ""
    
    var body: some View {
        VStack {
            Text("Map It")
                .font(.largeTitle)
                .padding(.top)
            HStack {
                CoordinateInputView(latitude: $latitude, longitude: $longitude)
                    .padding()
            }
            .padding()
            WebView(latitude: $latitude, longitude: $longitude)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

//#if DEBUG
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#endif
