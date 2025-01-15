//
//  MapViewModel.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-15.
//

import SwiftUI
import MapKit

class MapViewModel: ObservableObject {
    @Published var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.9271, longitude: 79.8612),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    func updateRegion(for city: String) {
        if city == "Moratuwa" {
            region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 6.7735, longitude: 79.8816),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
        }
    }
}

