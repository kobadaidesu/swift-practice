//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Kobayashi Daigo on 2026/07/09.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.red)

            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
                //.border(.red, width: 2)
               //.padding()
            
            Text("Description text")
                .font(.title2)
                //.border(.red, width: 1)
        }
       // .border(.orange, width: 1.5)
        .padding(60)
        //.border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
