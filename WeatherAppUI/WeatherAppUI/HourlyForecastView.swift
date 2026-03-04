//
//  HourlyForecastView.swift
//  WeatherAppUI
//
//  Created by CJ Stevens on 2/24/26.
//

import SwiftUI

struct HourlyForecastCard: View {
    let time: String
    let image: String
    let temperature: String
    
    var body: some View {
        HStack(spacing: 25) {
            VStack(alignment: .center, spacing: 10) {
                if (time != "NOW") {
                    Text(time + "PM")
                        .font(.subheadline)
                        .foregroundColor(.white)
                } else {
                    Text(time)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .font(.title2)
                    .foregroundColor(.white)
                
                Text(temperature + "°")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
        }
    }
}
