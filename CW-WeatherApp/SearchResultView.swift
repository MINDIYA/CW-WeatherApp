//
//  SearchResultView.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-15.
//


import SwiftUI

struct SearchResultView: View {
    let city: String
    @ObservedObject var viewModel: WeatherViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            WeatherView()
                .environmentObject(viewModel)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(){
                        dismiss()
                    }label: {
                        Text("Cancel")
                    }
                    .tint(.white)
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(){
                        dismiss()
                        viewModel.addToFavorites(city)
                    }label: {
                        Text("Add")
                    }
                    .tint(.white)
                }
            }
        }
    }
}

#Preview {
    SearchResultView(city: "Colombo", viewModel: WeatherViewModel())
}
