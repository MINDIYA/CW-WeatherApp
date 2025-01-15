//
//  SumaryView.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-11.
//
import SwiftUI
var WeatherSumaryView : some View {
    VStack {
        Text("Kalutara")
            .foregroundColor(Color.white)
            .font(Font.system(size: 32))
            .shadow(radius: 2.0)
        Text("84°")
            .foregroundColor(Color.white)
            .fontWeight(.thin)
            .font(Font.system(size: 100))
            .shadow(radius: 2.0)
        Text("Sunny")
            .foregroundColor(Color.white)
            .font(Font.system(size: 18))
            .fontWeight(.medium)
            .shadow(radius: 2.0)
        Text("H: 10°  L: 20°")
            .foregroundColor(Color.white)
            .font(Font.system(size: 18))
            .fontWeight(.medium)
            .shadow(radius: 2.0)
    }
}

struct WeatherSumaryView_previews: PreviewProvider {
    static var previews:some View {
        ScrollView{
            HStack{
                Spacer()
                WeatherSumaryView
                Spacer()
            }.padding(.top, 60)
        }
        .background(Color.blue)
    }
    
}
