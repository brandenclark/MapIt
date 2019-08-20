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
    @State var inLatitude: String = ""
    @State var inLongitude: String = ""
    @State var outLatitude: Double = 51.3
    @State var outLongitude: Double = -0.1
    let formatter = NumberFormatter()
    
    var body: some View {
        VStack {
            Text("Map It")
                .font(.largeTitle)
                .padding(.top)
            HStack {
                CoordinateInputView(latitude: $inLatitude, longitude: $inLongitude)
                    .padding()
                Button(
                    action: {
                        self.outLatitude = self.formatter.number(from: self.inLatitude)?.doubleValue ?? 0
                        self.outLongitude = self.formatter.number(from: self.inLongitude)?.doubleValue ?? 0
                }) {
                    Text("Go")
                        .font(.title)
                }
                .padding()
            }
            .padding()
            MapView(latitude: outLatitude, longitude: outLongitude)
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
