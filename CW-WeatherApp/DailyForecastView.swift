//
//  DailyForecastView.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-11.
//

import SwiftUI

struct DailyForecastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(Color.white.opacity(0.6))
                
                    Text("10 day forecast".uppercased())
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white.opacity(0.6))
            }
           
            Divider()
                
            
            ForEach(0..<9) { index in
                HStack {
                    Text("Today")
                        .font(Font.system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                        
                    
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .foregroundColor(.white)
                    
                    Spacer()
                        .frame(maxWidth: 50)
                    
                    Text("84°")
                        .foregroundColor(Color.white.opacity(0.6))
                    
                    RangedProgressView()
                        .frame(maxWidth: 100)
                        
                    
                    Text("72°")
                        .foregroundColor(.white)
                    
                }
                Divider()
                   
            }
        }
        .padding(10)
        .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 16.0))
                
        }
    }


struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            DailyForecastView()
                }
        .padding(.horizontal)
        .background(Color.blue)
    }
    
}

