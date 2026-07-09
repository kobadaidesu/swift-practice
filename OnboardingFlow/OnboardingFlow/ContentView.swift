//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Kobayashi Daigo on 2026/07/08.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]
struct ContentView: View {
    var body: some View {
            
        VStack{
            TabView {
                WelcomePage()
                FeaturesPage()
            }
            .background(Gradient(colors: gradientColors))
            .tabViewStyle(.page)
            .foregroundStyle(.white)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
