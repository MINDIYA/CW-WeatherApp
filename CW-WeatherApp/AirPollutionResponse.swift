//
//  AirPollutionResponse.swift
//  CW-WeatherApp
//
//  Created by Mindiya Maitipe on 2025-01-15.
//


import Foundation

struct AirPollutionResponse: Codable {
    let coord: Coord
    let list: [AirPollutionData]
    
    struct Coord: Codable {
        let lat: Double
        let lon: Double
    }
    
    struct AirPollutionData: Codable {
        let main: Main
        let components: Components
    }
    
    struct Main: Codable {
        let aqi: Int
    }
    
    struct Components: Codable {
        let co: Double
        let no2: Double
        let o3: Double
        let so2: Double
        let pm2_5: Double
        let pm10: Double
    }
}
