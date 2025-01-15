//
//  ContentView.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-11.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ScrollView{
           VStack {
               WeatherSumaryView
                   .padding(.top,60)
                   .padding(.bottom,40)
               
               HourlyForecastView()
                   .padding(.horizontal)
               
               DailyForecastView ()
                   .padding(.horizontal)
               
               
               
                   
          }
            
        }
        
        .background(.blue)
    }
    
   
   
    
                
            
        }
    


#Preview {
    CustomTabBar()
}
