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
                Text("\(Constants.latitudeText):")
                Spacer()
                TextField(Constants.latitudeText, text: $latitude)
                    .frame(maxWidth: Constants.maxWidth)
                    .multilineTextAlignment(.center)
                    .border(Constants.borderColor)
            }
            HStack {
                Text("\(Constants.longitudeText):")
                Spacer()
                TextField(Constants.longitudeText, text: $longitude)
                    .frame(maxWidth: Constants.maxWidth)
                    .multilineTextAlignment(.center)
                    .border(Constants.borderColor)
            }
        }
    }
    
    struct Constants {
        static let maxWidth: CGFloat = 150
        static let borderColor: Color = .black
        static let latitudeText = "Latitude"
        static let longitudeText = "Longitude"
    }
}

//#if DEBUG
//struct CoordinateInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoordinateInputView(latitude: "1", longitude: "2")
//    }
//}
//#endif
