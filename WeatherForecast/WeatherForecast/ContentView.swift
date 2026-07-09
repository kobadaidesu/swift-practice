//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Kobayashi Daigo on 2026/07/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        
        HStack {
            DayForecast(day: "Mon",isRainy: false , high: 70, low: 50)
            DayForecast(day: "Tue",isRainy: true, high: 60, low: 40)
            //VStack {
              //  Text("Mon")
                //Image(systemName: "sun.max.fill")
                  //  .foregroundStyle(Color.yellow)
               // Text("High: 70")
                //Text("Low: 50")
            //}
            //.padding()
        
            //VStack {
              //  Text("Tue")
                //Image(systemName: "cloud.rain.fill")
                  //  .foregroundStyle(Color.blue)
                ///Text("High: 60")
                //Text("Low: 40")
            }
            .padding()
        }
}


struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)º")
            Text("Low: \(low)º")
        }
        .padding()
    }
    
    #Preview {
        ContentView()
    }
}
