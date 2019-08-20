//
//  CoordinateInputView.swift
//  MapIt-Web-View
//
//  Created by Branden Clark on 8/15/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI

struct CoordinateInputView: View {
    @Binding var latitude: String
    @Binding var longitude: String
    
    var body: some View {
        VStack {
            HStack {
                Text("Latitude:")
                Spacer()
                TextField("Latitude", text: $latitude)
                    .frame(maxWidth: 150)
                    .multilineTextAlignment(.center)
                    .border(Color .black)
            }
            HStack {
                Text("Longitude:")
                Spacer()
                TextField("Longitude", text: $longitude)
                    .frame(maxWidth: 150)
                    .multilineTextAlignment(.center)
                    .border(Color .black)
            }
        }
    }
}

//#if DEBUG
//struct CoordinateInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoordinateInputView(latitude: "1", longitude: "2")
//    }
//}
//#endif
