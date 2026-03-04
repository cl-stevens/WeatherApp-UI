//
//  WeekForecastView.swift
//  WeatherAppUI
//
//  Created by CJ Stevens on 3/3/26.
//

import SwiftUI

struct DayForecastCard: View {
    let day: String
    let image: String
    let low_temperature: Int
    let high_temperature: Int


    
    var body: some View {
        VStack(spacing: 5) {
            HStack(spacing: 20) {
                Text(day)
                    .frame(width: 60, height: 24, alignment: .leading)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24, alignment: .leading)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(10)
                HStack(spacing: 10){
                    Text("\(low_temperature)°")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                    ZStack {
                        let range_temperature: Int = ((high_temperature + low_temperature)/2)
                        let temp_low: Int = low_temperature
                        let temp_high: Int = high_temperature

                        let lowBarColor: Color =
                            temp_low <= 40 ? .cyan :
                            temp_low <= 60 ? .yellow : .orange
                        
                        let highBarColor: Color =
                            temp_high <= 40 ? .cyan :
                            temp_high <= 60 ? .yellow : .orange

                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100, height: 5)
                            .foregroundColor(.white)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: Double(range_temperature), height: 5)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [lowBarColor, highBarColor],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    }
                    Text("\(high_temperature)°")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                }
            }
            Divider()
                .background(Color.white.opacity(0.15))
        }
    }
}
