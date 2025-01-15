//
//  HourlyForecastView.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-11.
//
import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sunny conditions will continue for the rest of the day. Wind gusts will be moderate.")
                .font(Font.system(size: 12))
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .shadow(radius:2.0)
            Divider()
                .padding(.bottom,10)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<24, id: \.self) { index in
                        VStack {
                            Text("Now")
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .font(Font.system(size: 14))

                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .padding(.vertical, 4)

                            Text("84°")
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                                .font(Font.system(size: 20))

                        }
                        .frame(width: 50)
                    }
                }
            }.scrollIndicators(.never)
        }
        .padding(14)
        .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 16.0))
    }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            HourlyForecastView()
        }
        .padding()
        .background(Color.blue)
    }
    
}
