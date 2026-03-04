//
//  Week.swift
//  WeatherAppUI
//
//  Created by CJ Stevens on 3/3/26.
//

import Foundation

struct DayForecastItem: Identifiable {
    let id = UUID()
    let day: String
    let image: String
    let low_temperature: Int
    let high_temperature: Int
}
