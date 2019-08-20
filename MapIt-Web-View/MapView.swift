//
//  MapView.swift
//  MapIt-Web-View
//
//  Created by Branden Clark on 8/15/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var latitude: String
    @Binding var longitude: String
    let formatter = NumberFormatter()
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: self.formatter.number(from: self.latitude)?.doubleValue ?? 0,
            longitude: self.formatter.number(from: self.longitude)?.doubleValue ?? 0)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

//#if DEBUG
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
//#endif
