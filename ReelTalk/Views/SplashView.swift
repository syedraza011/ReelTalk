//
//  SplashView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("splash-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            
            Text("Welcome to Our App")
                .font(.largeTitle)
            
            Text("Discover the best movies and TV shows.")
                .font(.headline)
                Text("Get Started")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)

        }
    }
}




#Preview {
    SplashView()
}
