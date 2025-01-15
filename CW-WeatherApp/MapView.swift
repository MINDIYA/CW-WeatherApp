//
//  MapView.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-15.
//

import SwiftUI
import MapKit

struct MapView: View {
    @ObservedObject var viewModel: WeatherViewModel
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), // Default location
        span: MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                updateRegion()
            }
    }
    
    private func updateRegion() {
        // Update the map's center to the first favorite city's coordinates if available
        if let firstCity = viewModel.favoriteCities.first {
            region.center = firstCity.coordinate
        }
    }
}

#Preview {
    MapView(viewModel: WeatherViewModel())
}

