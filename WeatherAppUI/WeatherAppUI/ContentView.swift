//
//  ContentView.swift
//  WeatherAppUI
//
//  Created by CJ Stevens on 2/23/26.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    let hour_items = [
        HourForecastItem(
            time: "NOW",
            image: "cloud.fill",
            temperature: "72"
        ), HourForecastItem(
            time: "4",
            image: "cloud.fill",
            temperature: "73"
        ), HourForecastItem(
            time: "5",
            image: "cloud.fill",
            temperature: "73"
        ), HourForecastItem(
            time: "6",
            image: "sun.max",
            temperature: "69"
        ), HourForecastItem(
            time: "7",
            image: "cloud.fill",
            temperature: "64"
        ), HourForecastItem(
            time: "8",
            image: "cloud.fill",
            temperature: "62"
        )
    ]
    
    let day_items: [DayForecastItem] = [
        DayForecastItem(
            day: "TODAY",
            image: "sun.max",
            low_temperature: 59,
            high_temperature: 73
        ), DayForecastItem(
            day: "Wed",
            image: "sun.max",
            low_temperature: 49,
            high_temperature: 68
        ), DayForecastItem(
            day: "Thu",
            image: "sun.max",
            low_temperature: 32,
            high_temperature: 44
        ), DayForecastItem(
            day: "Fri",
            image: "sun.max",
            low_temperature: 72,
            high_temperature: 85
        ), DayForecastItem(
            day: "Sat",
            image: "sun.max",
            low_temperature: 33,
            high_temperature: 49
        ),DayForecastItem(
            day: "Sun",
            image: "sun.max",
            low_temperature: 47,
            high_temperature: 59
        ), DayForecastItem(
            day: "Mon",
            image: "sun.max",
            low_temperature: 53,
            high_temperature: 67
        )
        
        ]
    
    var body: some View {
        ZStack(alignment: .top){
            LinearGradient(
                colors: [.blue, .cyan],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center){
                    VStack(alignment: .center){
                        Text("Chapel Hill")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        Text(" " + "72" + "°")
                            .foregroundColor(.white)
                            .font(.system(size: 90, weight: .thin))
                        Text("Sunny")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        Text(" H:73°" + " " + "L:59°")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                    }
                    .padding(20)
                    VStack(alignment: .leading, spacing: 8){
                        HStack(){
                            Image(systemName:"clock")
                                .foregroundColor(.white)
                            Text("Hourly Forecast")
                                .font(Font.headline)
                                .foregroundColor(.white)
                        }
                        Divider()
                            .background(Color.white.opacity(0.15))
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 0.5) {
                                ForEach(hour_items) { item in
                                    HourlyForecastCard(
                                        time: item.time,
                                        image: item.image,
                                        temperature: item.temperature
                                    )
                                }
                                .frame(width: 60)
                            }
                        }
                    }
                    .padding(15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(15)
                    .padding(.horizontal, 20)
                    VStack(alignment: .leading, spacing: 8){
                        HStack(){
                            Image(systemName:"calendar")
                                .foregroundColor(.white)
                            Text("10-DAY Forecast")
                                .font(Font.headline)
                                .foregroundColor(.white)
                        }
                        
                        Divider()
                            .background(Color.white.opacity(0.15))
                        ForEach(day_items) { item in
                            DayForecastCard(
                                day: item.day,
                                image: item.image,
                                low_temperature: item.low_temperature,
                                high_temperature: item.high_temperature
                            )
                        }
                    }
                    .padding(15)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(15)
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}
            
#Preview {
    ContentView()
}
