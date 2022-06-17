//
//  WeatherModel.swift
//  Clima
//
//  Created by Emmanuel Onouha on 6/16/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel{
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String{
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId{
        case 200..<205:
            return "cloud.bolt.rain"
        case 200..<229:
            return "cloud.bolt"
        case 230..<235:
            return "cloud.bolt.rain"
        case 300..<322:
            return "cloud.drizzle"
        case 500:
            fallthrough
        case 501:
            return "cloud.rain"
        case 502..<532:
            return "cloud.heavyrain"
        case 600..<622:
            return "cloud.snow"
        case 701:
            fallthrough
        case 741:
            return "cloud.fog"
        case 711:
            return "smoke.fill"
        case 721:
            return "sun.haze"
        case 731:
            fallthrough
        case 751:
            fallthrough
        case 761:
            fallthrough
        case 762:
            fallthrough
        case 771:
            return "sun.dust"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801..<805:
            return "cloud.sun"
        default:
            return "cloud.hail"
        }
    }

}
