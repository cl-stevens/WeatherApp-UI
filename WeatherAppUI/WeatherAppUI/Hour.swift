//
//  Hour.swift
//  WeatherAppUI
//
//  Created by CJ Stevens on 2/24/26.
//

import Foundation

struct HourForecastItem: Identifiable {
    let id = UUID()
    let time: String
    let image: String
    let temperature: String
}
